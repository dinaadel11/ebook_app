import 'package:dio/dio.dart';

abstract class Failuers {
  final String errorMessage;
  Failuers(this.errorMessage);
}

class ServerFailer extends Failuers {
  ServerFailer(super.errorMessage);

  factory ServerFailer.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailer('ConnectionTimeout With Api Server');
      case DioExceptionType.sendTimeout:
        return ServerFailer('SendTimeout With Api Server');
      case DioExceptionType.receiveTimeout:
        return ServerFailer('ReciveTimeout With Api Server');
      case DioExceptionType.badCertificate:
        return ServerFailer('ConnectionTimeout With Api Server');
      case DioExceptionType.badResponse:
        return ServerFailer.fromResponse(
            dioError.response!.statusCode!, dioError.response!.data);
      case DioExceptionType.cancel:
        return ServerFailer('Request  Api Server was cancel');
      case DioExceptionType.connectionError:
        return ServerFailer('ConnectionTimeout With Api Server');
      case DioExceptionType.unknown:
        return ServerFailer('No Internet Connection');
      default:
        return ServerFailer('Opps There was an Error ');
    }
  }

  factory ServerFailer.fromResponse(int statuesCode, dynamic response) {
    if (statuesCode == 400 || statuesCode == 401 || statuesCode == 403) {
      return ServerFailer(response['errors']['message']);
    } else if (statuesCode == 404) {
      return ServerFailer('Your Request not found ,Please try Agin!');
    } else if (statuesCode == 500) {
      return ServerFailer('Internal Server errors,Please try Agin!');
    } else {
      return ServerFailer('Opps There was an Error ');
    }
  }
}
