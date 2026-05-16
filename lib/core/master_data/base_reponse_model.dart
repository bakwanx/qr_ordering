class BaseResponse<T> {
  final bool success;
  final T? data;
  final List<T>? dataList;

  BaseResponse({required this.success, this.data, this.dataList});

  factory BaseResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Map<String, dynamic>)? createData,
  ) {
    if (createData != null && json['data'] is List) {
      final list = json['data'] as List;
      return BaseResponse<T>(
        success: json['success'],
        dataList: list
            .map((e) => createData(e as Map<String, dynamic>))
            .toList(),
      );
    }

    if (createData != null && json['data'] is Map<String, dynamic>) {
      return BaseResponse<T>(
        success: json['success'],
        data: createData(json['data'] as Map<String, dynamic>),
      );
    }

    return BaseResponse<T>(success: json['success']);
  }
}
