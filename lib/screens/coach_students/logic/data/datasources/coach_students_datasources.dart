import 'package:dio/dio.dart';
import 'package:hive_flutter/hive_flutter.dart';

abstract class CoachStudentsDataSource {
  Future<Response> getCoachStudents();

}

class CoachStudentsDataSourceImpl implements CoachStudentsDataSource {
  Dio dio = Dio();

  Box coach = Hive.box('coach');

  @override
  Future<Response> getCoachStudents() async {
    Response response = await dio.get('http://77.243.80.52:8000/api/v1/students/?coach=denis');
    return response;
  }
// ${coach.get('coach')}
 
}