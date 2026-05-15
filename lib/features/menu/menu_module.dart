import 'package:get_it/get_it.dart';
import 'package:qr_ordering/core/navigation/repositories/menu_navigation_repository_impl.dart';
import 'package:qr_ordering/features/menu/data/datasources/menu_remote_ds.dart';
import 'package:qr_ordering/features/menu/data/repositories/menu_repository_impl.dart';
import 'package:qr_ordering/features/menu/domain/repositories/menu_navigation_repository.dart';
import 'package:qr_ordering/features/menu/domain/repositories/menu_repository.dart';
import 'package:qr_ordering/features/menu/domain/usecases/get_menu_use_case.dart';
import 'package:qr_ordering/features/menu/presentation/cubit/menu_cubit.dart';

class MenuModule {
  Future<void> call(GetIt di) async {
    di.registerLazySingleton<MenuNavigationRepository>(
      () => MenuNavigationRepositoryImpl(),
    );

    di.registerLazySingleton<MenuRemoteDs>(
      () => MenuRemoteDsImpl(di()),
    );

    di.registerLazySingleton<MenuRepository>(
      () => MenuRepositoryImpl(di()),
    );

    di.registerLazySingleton<GetMenuUseCase>(
      () => GetMenuUseCase(di()),
    );

    di.registerFactory<MenuCubit>(() => MenuCubit(di()));
  }
}
