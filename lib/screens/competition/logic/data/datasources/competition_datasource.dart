import 'package:dio/dio.dart';

abstract class CompetitionDataSource {
  Future<Response> getCompetition();
}

class CompetitionDataSourceImpl implements CompetitionDataSource {
  Dio dio = Dio();

  @override
  Future<Response> getCompetition() async {
    Response response =
        await dio.get('http://77.243.80.52:8000/api/v1/competitions/');

    return response;
  }
}
