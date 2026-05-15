import 'package:get_it/get_it.dart';
import 'package:qr_ordering/core/navigation/repositories/cart_navigation_repository_impl.dart';
import 'package:qr_ordering/features/cart/domain/repositories/cart_navigation_repository.dart';
import 'package:qr_ordering/features/cart/presentation/cubit/cart_cubit.dart';

class CartModule {
  Future<void> call(GetIt di) async {
    di.registerLazySingleton<CartNavigationRepository>(
      () => CartNavigationRepositoryImpl(),
    );

    di.registerFactory<CartCubit>(() => CartCubit());
  }
}
