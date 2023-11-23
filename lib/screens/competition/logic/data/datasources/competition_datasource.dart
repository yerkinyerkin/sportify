import 'package:dio/dio.dart';

abstract class CompetitionDataSource {
  Future<Response> getCompetition(String? region);
  Future<Response> getRegions();
}

class CompetitionDataSourceImpl implements CompetitionDataSource {
  Dio dio = Dio();

  @override
  Future<Response> getCompetition(String? region) async {
    Response response = await dio.get(
        'http://77.243.80.52:8000/api/v1/competitions/',
        queryParameters: {"region": region ?? ""});

    return response;
  }

  @override
  Future<Response> getRegions() async {
    Response response =
        await dio.get('http://77.243.80.52:8000/api/v1/regions');

    return response;
  }
}
