import 'package:dio/dio.dart';
import 'package:sportify/screens/result/screens/winners/logic/data/datasources/grid_datasource.dart';
import 'package:sportify/screens/result/screens/winners/logic/data/models/winners_model.dart';

abstract class WinnersRepository {
  Future<WinnersModel> getWinners(
    String id,
    String age,
  );
}

class WinnersRepositoryImpl implements WinnersRepository {
  final WinnersDataSource gridDataSource;

  WinnersRepositoryImpl(this.gridDataSource);

  @override
  Future<WinnersModel> getWinners(
    String id,
    String age,
  ) async {
    Response response = await gridDataSource.getWinners(
      id,
      age,
    );
    return WinnersModel.fromJson(response.data);
  }
}
