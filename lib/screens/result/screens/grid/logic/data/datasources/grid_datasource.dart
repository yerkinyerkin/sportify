import 'package:dio/dio.dart';

abstract class GridDataSource {
  Future<Response> getGameParticipants(String id, String age, String weight);
}

class GridDataSourceImpl implements GridDataSource {
  Dio dio = Dio();

  @override
  Future<Response> getGameParticipants(
      String id, String age, String weight) async {
    Response response = await dio.get(
      'http://77.243.80.52:8000/api/v1/competitions/${id}/games/',
      queryParameters: {
        "age": age,
        "weight": weight,
      },
    );

    return response;
  }
}
