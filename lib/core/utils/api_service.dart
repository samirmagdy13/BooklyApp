import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio;
  final String _baseUrl = 'https://www.googleapis.com/books/v1/';
  ApiService(this._dio);

  Future<Map<String, dynamic>> getData({required String endPoints}) async {
    var response = await _dio.get('$_baseUrl$endPoints');

    return response.data;
  }
}
