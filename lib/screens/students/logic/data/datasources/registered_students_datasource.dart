import 'package:dio/dio.dart';
import 'package:sportify/core/dioInterceptor/dio_interceptor.dart';

abstract class RegisteredStDataSource {
  Future<Response> getRegisteredStudents(
    String id,
  );
}

class RegisteredStDataSourceImpl implements RegisteredStDataSource {
  Dio get dio => DioInterceptor(Dio()).getDio;

  @override
  Future<Response> getRegisteredStudents(
    String id,
  ) async {
    Response response = await dio.get(
      'http://77.243.80.52:8000/api/v1/competitions/${id}/registered_students/',
    //  'http://77.243.80.52:8000/api/v1/competitions/${id}/winners/',
      
    );

    return response;
  }
}
