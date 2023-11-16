import 'package:dio/dio.dart';
import 'package:sportify/screens/competition/logic/data/datasources/competition_datasource.dart';
import 'package:sportify/screens/competition/logic/data/models/competition_model.dart';

abstract class CompetitionRepository {
  Future<List<Data>> getCompetition();
}

class CompetitionRepositoryImpl implements CompetitionRepository {
  final CompetitionDataSource competitionDataSource;

  CompetitionRepositoryImpl(this.competitionDataSource);

  @override
  Future<List<Data>> getCompetition() async {
    Response response = await competitionDataSource.getCompetition();
    return (response.data as List).map((i) => Data.fromJson(i)).toList();
  }
}
