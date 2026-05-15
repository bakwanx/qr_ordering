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
    final response = await _dioService.get<Map<String, dynamic>>(
      '/menu',
      queryParameters: {'table_id': tableId},
    );
    return MenuResponseModel.fromJson(response.data!);
  }
}
