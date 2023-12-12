import 'package:dio/dio.dart';

abstract class WinnersDataSource {
  Future<Response> getWinners(
    String id,
    String age,
  );
}

class WinnersDataSourceImpl implements WinnersDataSource {
  Dio dio = Dio();

  @override
  Future<Response> getWinners(
    String id,
    String age,
  ) async {
    Response response = await dio.get(
      'http://77.243.80.52:8000/api/v1/competitions/${id}/winners/',
      queryParameters: {
        "age": age,
      },
    );

    return response;
  }
}
