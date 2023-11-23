import 'package:dio/dio.dart';
import 'package:sportify/screens/competition/logic/data/datasources/competition_datasource.dart';
import 'package:sportify/screens/competition/logic/data/models/competition_model.dart';
import 'package:sportify/screens/competition/logic/data/models/regions_model.dart';

abstract class CompetitionRepository {
  Future<CompetitionModel> getCompetition(String? region);
  Future<RegionsModel> getRegions();
}

class CompetitionRepositoryImpl implements CompetitionRepository {
  final CompetitionDataSource competitionDataSource;

  CompetitionRepositoryImpl(this.competitionDataSource);

  @override
  Future<CompetitionModel> getCompetition(String? region) async {
    Response response = await competitionDataSource.getCompetition(region);
    return CompetitionModel.fromJson(response.data);
  }

  @override
  Future<RegionsModel> getRegions() async {
    Response response = await competitionDataSource.getRegions();
    return RegionsModel.fromJson(response.data);
  }
}
