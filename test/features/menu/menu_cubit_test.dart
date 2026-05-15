import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:mocktail/mocktail.dart';
import 'package:qr_ordering/core/cubit/qr_ordering_status.dart';
import 'package:qr_ordering/core/error/failure.dart';
import 'package:qr_ordering/features/menu/domain/entities/menu_response_entity.dart';
import 'package:qr_ordering/features/menu/domain/entities/restaurant_entity.dart';
import 'package:qr_ordering/features/menu/domain/usecases/get_menu_use_case.dart';
import 'package:qr_ordering/features/menu/presentation/cubit/menu_cubit.dart';

class MockGetMenuUseCase extends Mock implements GetMenuUseCase {}

void main() {
  late MenuCubit menuCubit;
  late MockGetMenuUseCase mockGetMenuUseCase;

  setUp(() {
    mockGetMenuUseCase = MockGetMenuUseCase();
    menuCubit = MenuCubit(mockGetMenuUseCase);
  });

  tearDown(() {
    menuCubit.close();
  });

  const testTableId = 'table-1';
  const testMenuResponse = MenuResponseEntity(
    restaurant: RestaurantEntity(id: '1', name: 'Test Restaurant', tableId: testTableId),
    categories: [],
    items: [],
  );

  group('MenuCubit', () {
    blocTest<MenuCubit, MenuState>(
      'fetchMenu success emits submissionSuccess with items',
      build: () {
        when(() => mockGetMenuUseCase(testTableId))
            .thenAnswer((_) async => const Right(testMenuResponse));
        return menuCubit;
      },
      act: (cubit) => cubit.fetchMenu(testTableId),
      expect: () => [
        isA<MenuState>()
            .having((s) => s.menuStatus, 'status', QrOrderingStatus.submissionInProgress),
        isA<MenuState>()
            .having((s) => s.menuStatus, 'status', QrOrderingStatus.submissionSuccess)
            .having((s) => s.restaurant?.name, 'restaurant name', 'Test Restaurant'),
      ],
    );

    blocTest<MenuCubit, MenuState>(
      'fetchMenu failure emits submissionFailure with Failure',
      build: () {
        when(() => mockGetMenuUseCase(testTableId))
            .thenAnswer((_) async => const Left(UnknownFailure(message: 'Error fetching menu')));
        return menuCubit;
      },
      act: (cubit) => cubit.fetchMenu(testTableId),
      expect: () => [
        isA<MenuState>()
            .having((s) => s.menuStatus, 'status', QrOrderingStatus.submissionInProgress),
        isA<MenuState>()
            .having((s) => s.menuStatus, 'status', QrOrderingStatus.submissionFailure)
            .having((s) => s.failure?.message, 'failure message', 'Error fetching menu'),
      ],
    );
  });
}
