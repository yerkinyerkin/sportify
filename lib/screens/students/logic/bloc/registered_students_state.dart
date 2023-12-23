part of 'registered_students_bloc.dart';

abstract class RegisteredStudentsState {}

class RegisteredStudentsInitial extends RegisteredStudentsState {}

class RegisteredStudentsLoading extends RegisteredStudentsState {}

class RegisteredStudentsSuccess extends RegisteredStudentsState {
  final RegisteredStudentsModel response;

  RegisteredStudentsSuccess(this.response);
}

class RegisteredStudentsFailure extends RegisteredStudentsState {
  final Response response;

  RegisteredStudentsFailure(this.response);
}
