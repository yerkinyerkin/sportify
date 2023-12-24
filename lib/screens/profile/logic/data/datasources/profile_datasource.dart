import 'package:dio/dio.dart';

abstract class ProfileDataSource {
  Future<Response> getProfile(String id);
}

class ProfileDataSourceImpl implements ProfileDataSource {
  Dio dio = Dio();

  @override
  Future<Response> getProfile(String id) async {
    Response response = await dio.get(
      'http://77.243.80.52:8000/api/v1/students/$id',
    );

    return response;
  }
}
