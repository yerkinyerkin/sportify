import 'package:dio/dio.dart';

import 'package:sportify/screens/result/screens/grid/logic/data/datasources/grid_datasource.dart';
import 'package:sportify/screens/result/screens/grid/logic/data/models/grid_model.dart';

abstract class GridRepository {
  Future<GridModel> getGameParticipants(String id, String age, String weight);
}

class GridRepositoryImpl implements GridRepository {
  final GridDataSource gridDataSource;

  GridRepositoryImpl(this.gridDataSource);

  @override
  Future<GridModel> getGameParticipants(
      String id, String age, String weight) async {
    Response response =
        await gridDataSource.getGameParticipants(id, age, weight);
    return GridModel.fromJson(response.data);
  }
}
