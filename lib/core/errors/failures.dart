import 'package:dio/dio.dart';

abstract class Failure {
  final String errMsg;

  Failure({required this.errMsg});
}

class ServerFailure extends Failure {
  ServerFailure({required super.errMsg});

  factory ServerFailure.fromDioError(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(errMsg: "Connection TimeOut");
      case DioExceptionType.sendTimeout:
        return ServerFailure(errMsg: "Send TimeOut with ApiServer");
      case DioExceptionType.receiveTimeout:
        return ServerFailure(errMsg: "Recieve TimeOut with ApiServer");
      case DioExceptionType.badCertificate:
        return ServerFailure(errMsg: "Bad Certificate");
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioException.response?.statusCode ?? 0,
            dioException.response?.data);
      case DioExceptionType.cancel:
        return ServerFailure(errMsg: 'Request to ApiServer was canceld');
      case DioExceptionType.connectionError:
        return ServerFailure(errMsg: 'Error while connecting to server');
      case DioExceptionType.unknown:
        if (dioException.message?.contains('SocketException') ?? false) {
          return ServerFailure(errMsg: 'No Internet Connection');
        }
        return ServerFailure(errMsg: 'UnExpected Error , try again');
      default:
        return ServerFailure(errMsg: 'UnExpected Error , try again');
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(errMsg: response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure(errMsg: 'Your request not found, Please try later!');
    } else if (statusCode == 500) {
      return ServerFailure(errMsg: 'Internal Server error, Please try later');
    } else {
      return ServerFailure(
          errMsg:
              'Opps There was an Error with code $statusCode, Please try again');
    }
  }
}
