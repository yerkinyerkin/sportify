import 'package:dio/dio.dart';

abstract class LoginDataSource {
  Future<Response> getToken(String email, String password);
}

class LoginDataSourceImpl implements LoginDataSource {
  Dio dio = Dio();

  @override
  Future<Response> getToken(String email, String password) async {
    Response response = await dio.post(
        'http://77.243.80.52:8000/api/v1/auth/login/',
        data: {"username": email, "password": password});

    return response;
  }
}
