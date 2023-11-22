import 'package:dio/dio.dart';
import 'package:sportify/screens/competition/logic/data/datasources/competition_datasource.dart';
import 'package:sportify/screens/competition/logic/data/models/competition_model.dart';

abstract class CompetitionRepository {
  Future<CompetitionModel> getCompetition();
}

class CompetitionRepositoryImpl implements CompetitionRepository {
  final CompetitionDataSource competitionDataSource;

  CompetitionRepositoryImpl(this.competitionDataSource);

  @override
  Future<CompetitionModel> getCompetition() async {
    Response response = await competitionDataSource.getCompetition();
    return CompetitionModel.fromJson(response.data);
  }
}
