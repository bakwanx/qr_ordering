import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:qr_ordering/core/error/failure.dart';
import 'package:qr_ordering/core/service/dio_service.dart';
import 'package:qr_ordering/features/scanner/data/datasources/scanner_remote_ds.dart';
import 'package:qr_ordering/features/scanner/data/mapper/table_mapper.dart';
import 'package:qr_ordering/features/scanner/domain/entities/table_status_entity.dart';
import 'package:qr_ordering/features/scanner/domain/repositories/scanner_repository.dart';

class ScannerRepositoryImpl implements ScannerRepository {
  final ScannerRemoteDs _remoteDs;

  ScannerRepositoryImpl(this._remoteDs);

  @override
  Future<Either<Failure, TableStatusEntity>> validateTable(
    String tableId,
  ) async {
    try {
      final model = await _remoteDs.getTableStatus(tableId);
      return Right(model.toEntity());
    } on DioException catch (e) {
      return Left(dioExceptionToFailure(e));
    } catch (e) {
      return Left(UnknownFailure(message: e.toString()));
    }
  }
}
