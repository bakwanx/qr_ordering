import 'package:dartz/dartz.dart';
import 'package:qr_ordering/core/error/failure.dart';
import 'package:qr_ordering/features/menu/domain/entities/menu_response_entity.dart';
import 'package:qr_ordering/features/menu/domain/repositories/menu_repository.dart';

class GetMenuUseCase {
  final MenuRepository _repository;

  GetMenuUseCase(this._repository);

  Future<Either<Failure, MenuResponseEntity>> call(String tableId) {
    return _repository.getMenu(tableId);
  }
}
