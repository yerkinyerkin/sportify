import 'package:dio/dio.dart';
import 'package:sportify/screens/coach_students/logic/data/datasources/coach_students_datasources.dart';
import 'package:sportify/screens/profile/logic/data/models/profile_model.dart';

abstract class CoachStudentsRepository {
  Future<List<ProfileModel>> getCoachStudents();
}

class CoachStudentsRepositoryImpl implements CoachStudentsRepository {
  final CoachStudentsDataSource coachStudentsDataSource;

  CoachStudentsRepositoryImpl(this.coachStudentsDataSource);

  @override
  Future<List<ProfileModel>> getCoachStudents() async {
    Response response = await coachStudentsDataSource.getCoachStudents();
    return (response.data as List)
        .map((i) => ProfileModel.fromJson(i))
        .toList();
  }
}
