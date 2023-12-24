part of 'coach_students_bloc.dart';

abstract class CoachStudentsState {}

class CoachStudentsInitial extends CoachStudentsState {}

class CoachStudentsLoading extends CoachStudentsState {}

class CoachStudentsSuccess extends CoachStudentsState {
  final List<ProfileModel> coachStudentsList;

  CoachStudentsSuccess(this.coachStudentsList);
}

class CoachStudentsFailure extends CoachStudentsState {
  final Response response;

  CoachStudentsFailure(this.response);
}