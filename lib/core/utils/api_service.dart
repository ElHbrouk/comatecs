import 'package:dio/dio.dart';

class ApiService {
  final String baseUrl = "http://23.106.49.10:3000/";
  final Dio _dio;

  ApiService({required Dio dio}) : _dio = dio;
  Future getData({
    required String endPoint,
    Map<String, dynamic>? headers,
  }) async {
    Response response = await _dio.get(
      baseUrl + endPoint,
      options: Options(
        contentType: "application/json",
        responseType: ResponseType.json,
        headers: headers,
      ),
    );
    var jsonData = response.data;
    return jsonData;
  }

  Future<Response<Map<String, dynamic>>> postData({
    required String endPoint,
    Map<String, dynamic>? data,
    Map<String, dynamic>? headers,
  }) async {
    Response<Map<String, dynamic>> response = await _dio.post(
      options: Options(
        headers: headers,
        contentType: "application/json",
      ),
      baseUrl + endPoint,
      data: data,
    );

    return response;
  }

  patchData({
    required String endPoint,
    required Map<String, dynamic> data,
    Map<String, dynamic>? headers,
  }) async {
    await _dio.patch(
      baseUrl + endPoint,
      data: data,
      options: Options(
        headers: headers,
      ),
    );
  }

  void deleteData({
    required String endPoint,
    Map<String, dynamic>? headers,
  }) async {
    await _dio.delete(
      baseUrl + endPoint,
      options: Options(
        headers: headers,
      ),
    );
  }
}
