import 'dart:developer';

import 'package:dio/dio.dart';

abstract class Failure {
  final String message;

  Failure({required this.message});
}

class ServerFailure extends Failure {
  ServerFailure({required super.message});
  factory ServerFailure.fromDioExeption({required DioException dioException}) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(message: 'Connection timeout with ApiServer');
      case DioExceptionType.sendTimeout:
        return ServerFailure(message: 'Send timeout with ApiServer');
      case DioExceptionType.receiveTimeout:
        return ServerFailure(message: 'Receive timeout with ApiServer');
      case DioExceptionType.badCertificate:
        return ServerFailure(message: 'Bad certificate with ApiServer');
      case DioExceptionType.badResponse:
        return ServerFailure.formBadResponse(dioException);
      case DioExceptionType.cancel:
        return ServerFailure(message: 'Request to ApiServer was cancelled');
      case DioExceptionType.connectionError:
        log(dioException.toString());
        return ServerFailure(
            message: 'Connection error with ApiServer $dioException');
      case DioExceptionType.unknown:
        return ServerFailure(message: 'Something went wrong');
    }
  }
  factory ServerFailure.formBadResponse(DioException response) {
    var dioResponse = response.response?.statusCode;

    if (dioResponse == 400 || dioResponse == 401 || dioResponse == 403) {
      return ServerFailure(message: 'Error, Unauthorized Access');
    } else if (dioResponse! <= 500) {
      return ServerFailure(message: 'Error, Internal Server Error');
    } else {
      return ServerFailure(message: 'Error, Something went wrong');
    }
  }
}
