import 'package:get_it/get_it.dart';
import 'package:qr_ordering/core/navigation/repositories/scanner_navigation_repository_impl.dart';
import 'package:qr_ordering/features/scanner/domain/repositories/scanner_navigation_repository.dart';
import 'package:qr_ordering/features/scanner/data/datasources/scanner_remote_ds.dart';
import 'package:qr_ordering/features/scanner/data/repositories/scanner_repository_impl.dart';
import 'package:qr_ordering/features/scanner/domain/repositories/scanner_repository.dart';
import 'package:qr_ordering/features/scanner/domain/usecases/validate_table_use_case.dart';
import 'package:qr_ordering/features/scanner/presentation/cubit/scanner_cubit.dart';

class ScannerModule {
  Future<void> call(GetIt di) async {
    di.registerLazySingleton<ScannerNavigationRepository>(
      () => ScannerNavigationRepositoryImpl(),
    );

    di.registerLazySingleton<ScannerRemoteDs>(
      () => ScannerRemoteDsImpl(di()),
    );

    di.registerLazySingleton<ScannerRepository>(
      () => ScannerRepositoryImpl(di()),
    );

    di.registerLazySingleton<ValidateTableUseCase>(
      () => ValidateTableUseCase(di()),
    );

    di.registerFactory<ScannerCubit>(() => ScannerCubit(di()));
  }
}
