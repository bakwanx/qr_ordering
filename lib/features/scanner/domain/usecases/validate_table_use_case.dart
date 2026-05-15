import 'package:dartz/dartz.dart';
import 'package:qr_ordering/core/error/failure.dart';
import 'package:qr_ordering/features/scanner/domain/entities/table_status_entity.dart';
import 'package:qr_ordering/features/scanner/domain/repositories/scanner_repository.dart';

class ValidateTableUseCase {
  final ScannerRepository _repository;

  ValidateTableUseCase(this._repository);

  Future<Either<Failure, TableStatusEntity>> call(String tableId) {
    return _repository.validateTable(tableId);
  }
}
