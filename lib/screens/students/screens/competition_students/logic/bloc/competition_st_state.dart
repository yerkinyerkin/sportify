part of 'competition_st_bloc.dart';

abstract class CompetitionStState {}

class CompetitionStInitial extends CompetitionStState {}

class CompetitionStLoading extends CompetitionStState {}

class CompetitionStSuccess extends CompetitionStState {
  final CompetitionStModel response;

  CompetitionStSuccess(this.response);
}

class CompetitionStFailure extends CompetitionStState {
  final Response response;

  CompetitionStFailure(this.response);
}

class RegisterStudentLoading extends CompetitionStState {}

class RegisterStudentSuccess extends CompetitionStState {
  final RegisterStudentModel response;

  RegisterStudentSuccess(this.response);
}

class RegisterStudentFailure extends CompetitionStState {
  final Response response;

  RegisterStudentFailure(this.response);
}