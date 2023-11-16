import 'package:dio/dio.dart';
import 'package:sportify/screens/login/logic/data/datasources/login_datasource.dart';
import 'package:sportify/screens/login/logic/data/models/login_model.dart';

abstract class LoginRepository {
  Future<LoginModel> getToken(String email, String password);
}

class LoginRepositoryImpl implements LoginRepository {
  final LoginDataSource loginDataSource;

  LoginRepositoryImpl(this.loginDataSource);

  @override
  Future<LoginModel> getToken(String email, String password) async {
    Response response = await loginDataSource.getToken(email, password);
    return LoginModel.fromJson(response.data);
  }
}
