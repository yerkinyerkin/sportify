import 'package:dio/dio.dart';
import 'package:sportify/screens/students/logic/data/datasources/registered_students_datasource.dart';
import 'package:sportify/screens/students/logic/data/models/registered_students_model.dart';

abstract class RegisteredStRepository {
  Future<RegisteredStudentsModel> getRegisteredStudents(
    String id,
  );
}

class RegisteredStRepositoryImpl implements RegisteredStRepository {
  final RegisteredStDataSource registeredStDataSource;

  RegisteredStRepositoryImpl(this.registeredStDataSource);

  @override
  Future<RegisteredStudentsModel> getRegisteredStudents(
    String id,
  ) async {
    Response response = await registeredStDataSource.getRegisteredStudents(
      id,
    );
    return RegisteredStudentsModel.fromJson(response.data);
  }
}
