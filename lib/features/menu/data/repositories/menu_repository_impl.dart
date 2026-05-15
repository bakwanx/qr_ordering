import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:qr_ordering/core/error/failure.dart';
import 'package:qr_ordering/core/service/dio_service.dart';
import 'package:qr_ordering/features/menu/data/datasources/menu_remote_ds.dart';
import 'package:qr_ordering/features/menu/data/mapper/menu_mapper.dart';
import 'package:qr_ordering/features/menu/domain/entities/menu_response_entity.dart';
import 'package:qr_ordering/features/menu/domain/repositories/menu_repository.dart';

class MenuRepositoryImpl implements MenuRepository {
  final MenuRemoteDs _remoteDs;

  MenuRepositoryImpl(this._remoteDs);

  @override
  Future<Either<Failure, MenuResponseEntity>> getMenu(String tableId) async {
    try {
      final model = await _remoteDs.getMenu(tableId);
      return Right(model.toEntity());
    } on DioException catch (e) {
      return Left(dioExceptionToFailure(e));
    } catch (e) {
      return Left(UnknownFailure(message: e.toString()));
    }
  }
}
