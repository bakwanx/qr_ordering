import 'package:qr_ordering/core/master_data/base_reponse_model.dart';
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
    return _dioService.get(
      endpoint: '/tables/$tableId/status',
      converter: (response) {
        return BaseResponse<TableStatusModel>.fromJson(
          response,
          (json) => TableStatusModel.fromJson(json),
        ).data!;
      },
    );
  }
}
