import 'package:get_it/get_it.dart';
import 'package:qr_ordering/core/navigation/repositories/order_navigation_repository_impl.dart';
import 'package:qr_ordering/features/order/data/datasources/order_remote_ds.dart';
import 'package:qr_ordering/features/order/data/repositories/order_repository_impl.dart';
import 'package:qr_ordering/features/order/domain/repositories/order_navigation_repository.dart';
import 'package:qr_ordering/features/order/domain/repositories/order_repository.dart';
import 'package:qr_ordering/features/order/domain/usecases/get_order_status_use_case.dart';
import 'package:qr_ordering/features/order/domain/usecases/submit_order_use_case.dart';
import 'package:qr_ordering/features/order/presentation/cubit/order_cubit.dart';

class OrderModule {
  Future<void> call(GetIt di) async {
    di.registerLazySingleton<OrderNavigationRepository>(
      () => OrderNavigationRepositoryImpl(),
    );

    di.registerLazySingleton<OrderRemoteDs>(
      () => OrderRemoteDsImpl(di()),
    );

    di.registerLazySingleton<OrderRepository>(
      () => OrderRepositoryImpl(di()),
    );

    di.registerLazySingleton<SubmitOrderUseCase>(
      () => SubmitOrderUseCase(di()),
    );

    di.registerLazySingleton<GetOrderStatusUseCase>(
      () => GetOrderStatusUseCase(di()),
    );

    di.registerFactory<OrderCubit>(
      () => OrderCubit(di(), di()),
    );
  }
}
