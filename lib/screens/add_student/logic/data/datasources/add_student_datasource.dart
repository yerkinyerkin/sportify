import 'dart:io';

import 'package:dio/dio.dart';
import 'package:sportify/core/dioInterceptor/dio_interceptor.dart';

abstract class AddStudentDataSource {
  Future<Response> addStudents(
    File image,
    String firstName,
    String lastName,
    String dateOfBirth,
  );
}

class AddStudentDataSourceImpl implements AddStudentDataSource {
  Dio get dio => DioInterceptor(Dio()).getDio;

  @override
  Future<Response> addStudents(
    File image,
    String firstName,
    String lastName,
    String dateOfBirth,
  ) async {
    FormData formData = FormData();

    File file = File(image.path);
    formData.files.add(
      MapEntry(
        'image',
        await MultipartFile.fromFile(file.path),
      ),
    );

    formData.fields.addAll([
      MapEntry('first_name', firstName),
      MapEntry('last_name', lastName),
      MapEntry('date_of_birth', dateOfBirth),
    ]);
    Response response = await dio
        .post('http://77.243.80.52:8000/api/v1/students/', data: formData);

    return response;
  }
}
