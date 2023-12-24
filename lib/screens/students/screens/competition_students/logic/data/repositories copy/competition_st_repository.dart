import 'package:dio/dio.dart';
import 'package:sportify/screens/students/screens/competition_students/logic/data/datasources/competition_st_datasource.dart';
import 'package:sportify/screens/students/screens/competition_students/logic/data/models/competition_st_model.dart';
import 'package:sportify/screens/students/screens/competition_students/logic/data/models/register_students_model.dart';

abstract class CompetitionStRepository {
  Future<CompetitionStModel> getCompetitionStudents(
    String id,
  );
  Future<RegisterStudentModel> registerStudent(
    String id,
    String studentId,
    String age,
    String weight,  );
}

class CompetitionStRepositoryImpl implements CompetitionStRepository {
  final CompetitionStDataSource competitionStDataSource;

  CompetitionStRepositoryImpl(this.competitionStDataSource);

  @override
  Future<CompetitionStModel> getCompetitionStudents(
    String id,
  ) async {
    Response response = await competitionStDataSource.getCompetitionStudents(
      id,
    );
    return CompetitionStModel.fromJson(response.data);
  }
  @override
  Future<RegisterStudentModel> registerStudent(
    String id,
    String studentId,
    String age,
    String weight,
  ) async {
    Response response = await competitionStDataSource.registerStudent(
      id,studentId,age,weight
    );
    return RegisterStudentModel.fromJson(response.data);
  }
}
