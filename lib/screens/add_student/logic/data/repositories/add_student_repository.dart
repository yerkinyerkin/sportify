import 'dart:io';

import 'package:dio/dio.dart';
import 'package:sportify/screens/add_student/logic/data/datasources/add_student_datasource.dart';
import 'package:sportify/screens/add_student/logic/data/models/add_students_model.dart';

abstract class AddStudentRepository {
  Future<AddStudentsModel> addStudents(File image, String firstName,String lastName, String dateOfBirth,);
}

class AddStudentRepositoryImpl implements AddStudentRepository {
  final AddStudentDataSource addStudentDataSource;

  AddStudentRepositoryImpl(this.addStudentDataSource);

  

  @override
  Future<AddStudentsModel> addStudents(File image, String firstName,String lastName, String dateOfBirth,) async {
    Response response = await addStudentDataSource.addStudents(image,firstName,lastName,dateOfBirth,);
    return AddStudentsModel.fromJson(response.data);
  }
}