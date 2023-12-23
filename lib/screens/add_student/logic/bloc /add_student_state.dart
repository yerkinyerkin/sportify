part of 'add_student_bloc.dart';

abstract class AddStudentState {}

class AddStudentInitial extends AddStudentState {}

class AddStudentLoading extends AddStudentState {}

class AddStudentSuccess extends AddStudentState {
  final AddStudentsModel response;

  AddStudentSuccess({required this.response});

}

class AddStudentFailure extends AddStudentState {
  final Response response;

  AddStudentFailure(this.response);
}
