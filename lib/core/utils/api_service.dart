import 'package:dio/dio.dart';

class ApiService {
  final Dio dio = Dio();

  Future<Response> apiPost({
    required String url,
    required Map<String, dynamic> body,
    required String token,
    String? contentType,
    Map<String, String>? headers,
  }) {
    var response = dio.post(
      url,
      data: body,
      options: Options(
        followRedirects: false,
        validateStatus: (status) {
          return status! < 500;
        },
        contentType: contentType,
        headers: headers ??
            {
              'Authorization': "Bearer $token",
            },
      ),
    );
    return response;
  }
}
