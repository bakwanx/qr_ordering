import 'package:qr_ordering/core/utils/extension/safe_null_object.dart';
import 'package:qr_ordering/features/scanner/data/models/table_status_model.dart';
import 'package:qr_ordering/features/scanner/domain/entities/table_status_entity.dart';

extension TableStatusMapper on TableStatusModel {
  TableStatusEntity toEntity() {
    return TableStatusEntity(
      tableId: tableId.orEmpty(),
      status: status.orEmpty(),
      restaurantId: restaurantId,
    );
  }
}
