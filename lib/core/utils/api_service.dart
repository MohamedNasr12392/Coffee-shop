import 'package:dio/dio.dart';

class ApiService {
  final Dio dio = Dio();

  Future<Response> post({
    required String url,
    required String body,
    required String token,
    String? contentType,
  }) {
    var response = dio.post(
      url,
      data: body,
      options: Options(
        contentType: contentType,
        headers: {
          'Authorization': 'Bearer $token',
        },
      ),
    );
    return response;
  }
}
