import 'package:dio/dio.dart';
import 'dart:convert';

import 'package:todayworkings/services/api_routes.dart';

class ApiResponse {
  String message;
  ApiResponseData data;
  ApiResponse({
    required this.message,
    required this.data,
  });
  factory ApiResponse.fromMap(Map<String, dynamic> map) {
    return ApiResponse(
      message: map['response']['message'] ?? '',
      data: ApiResponseData.fromMap(map['response']['data']),
    );
  }
  factory ApiResponse.fromJson(String source) =>
      ApiResponse.fromMap(json.decode(source));
}

class ApiResponseData {
  String resultStatus;
  String resultMessage;
  dynamic resultData;
  ApiResponseData({
    required this.resultStatus,
    required this.resultMessage,
    required this.resultData,
  });
  factory ApiResponseData.fromMap(Map<String, dynamic> map) {
    return ApiResponseData(
      resultStatus: map['result_status'] ?? '',
      resultMessage: map['result_message'] ?? '',
      resultData: map['result_data'],
    );
  }
  factory ApiResponseData.fromJson(String source) =>
      ApiResponseData.fromMap(json.decode(source));
}

class ApiService {
  final Dio _dio = Dio();
  final String _endpoint = 'https://api.todayworkings.com/';

  Future<ApiResponseData> termsSelect(String type) async {
    String url = _endpoint + ApiRoutes.termSelect;
    var res = await _dio.post(url, data: {'type': type});
    var obj = ApiResponse.fromMap(res.data);
    print(obj.data.resultData);
    return obj.data;
  }
}
