import 'package:dio/dio.dart';
import 'package:sportify/core/dioInterceptor/dio_interceptor.dart';

abstract class CompetitionStDataSource {
  Future<Response> getCompetitionStudents(
    String id,
  );
  Future<Response> registerStudent(
    String id,
    String studentId,
    String age,
    String weight,
  );
}

class CompetitionStDataSourceImpl implements CompetitionStDataSource {
  Dio get dio => DioInterceptor(Dio()).getDio;

  @override
  Future<Response> getCompetitionStudents(
    String id,
  ) async {
    Response response = await dio.get(
      'http://77.243.80.52:8000/api/v1/competitions/${id}/students/',
    );

    return response;
  }

  @override
  Future<Response> registerStudent(
    String id,
    String studentId,
    String age,
    String weight,
  ) async {
    Response response = await dio.post(
        'http://77.243.80.52:8000/api/v1/competitions/${id}/register_student/',
        data: {
          'student': studentId,
          'age_category': age,
          'weight_category': weight
        });

    return response;
  }
}
