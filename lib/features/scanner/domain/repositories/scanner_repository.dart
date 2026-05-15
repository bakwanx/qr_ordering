import 'package:dartz/dartz.dart';
import 'package:qr_ordering/core/error/failure.dart';
import 'package:qr_ordering/features/scanner/domain/entities/table_status_entity.dart';

abstract class ScannerRepository {
  Future<Either<Failure, TableStatusEntity>> validateTable(String tableId);
}
