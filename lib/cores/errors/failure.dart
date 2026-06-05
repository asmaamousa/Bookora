import 'package:dio/dio.dart';

abstract class Failure {
  final String errmessage;

  Failure(this.errmessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errmessage);

  factory ServerFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout. Please try again.');

      case DioExceptionType.sendTimeout:
        return ServerFailure('Request timeout while sending data.');

      case DioExceptionType.receiveTimeout:
        return ServerFailure('Request timeout while receiving data.');

      case DioExceptionType.badCertificate:
        return ServerFailure('Invalid security certificate.');
      case DioExceptionType.cancel:
        return ServerFailure('Request was cancelled.');

      case DioExceptionType.connectionError:
        return ServerFailure('No internet connection.');

      case DioExceptionType.badResponse:
         return ServerFailure.fromResponse(dioError.response!.statusCode!, dioError.response!.data);

      case DioExceptionType.unknown:
      if(dioError.message!.contains('SoketException')){
         return ServerFailure('No internet connection.');
      }else{ return ServerFailure('Unexpected error occurred. Please try again.');}
       
    }
  }
  factory ServerFailure.fromResponse(int statuscode, dynamic response) {
    if (statuscode == 400 || statuscode == 401 || statuscode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statuscode == 404) {
      return ServerFailure('not found, try later');
    } else if (statuscode == 500) {
      return ServerFailure('internal server error');
    } else {
      return ServerFailure('opps error');
    }
  }
}
