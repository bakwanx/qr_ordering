import 'package:qr_ordering/core/master_data/base_reponse_model.dart';
import 'package:qr_ordering/core/service/dio_service.dart';
import 'package:qr_ordering/features/menu/data/models/menu_response_model.dart';

abstract class MenuRemoteDs {
  Future<MenuResponseModel> getMenu(String tableId);
}

class MenuRemoteDsImpl implements MenuRemoteDs {
  final DioService _dioService;

  MenuRemoteDsImpl(this._dioService);

  @override
  Future<MenuResponseModel> getMenu(String tableId) async {
    return _dioService.get(
      endpoint: '/menu',
      queryParameters: {'table_id': tableId},
      converter: (response) {
        return BaseResponse<MenuResponseModel>.fromJson(
          response,
          (json) => MenuResponseModel.fromJson(json),
        ).data!;
      },
    );
  }
}
