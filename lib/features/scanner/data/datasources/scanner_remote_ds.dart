import 'package:qr_ordering/core/service/dio_service.dart';
import 'package:qr_ordering/features/scanner/data/models/table_status_model.dart';

abstract class ScannerRemoteDs {
  Future<TableStatusModel> getTableStatus(String tableId);
}

class ScannerRemoteDsImpl implements ScannerRemoteDs {
  final DioService _dioService;

  ScannerRemoteDsImpl(this._dioService);

  @override
  Future<TableStatusModel> getTableStatus(String tableId) async {
    final response = await _dioService.get<Map<String, dynamic>>(
      '/tables/$tableId/status',
    );
    return TableStatusModel.fromJson(response.data!);
  }
}
