import 'package:dartz/dartz.dart';
import 'package:qr_ordering/core/error/failure.dart';
import 'package:qr_ordering/features/menu/domain/entities/menu_response_entity.dart';

abstract class MenuRepository {
  Future<Either<Failure, MenuResponseEntity>> getMenu(String tableId);
}
