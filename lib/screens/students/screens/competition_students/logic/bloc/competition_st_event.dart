part of 'competition_st_bloc.dart';

abstract class CompetitionStEvent {}

class GetCompetitionStEvent extends CompetitionStEvent {
  final String id;

  GetCompetitionStEvent(
    this.id,
  );
}

class RegisterStudentEvent extends CompetitionStEvent {
  final String id;
  final String studentId;
  final String age;
  final String weight;

  RegisterStudentEvent(
    {required this.id,required this.studentId, required this.age, required this.weight,}
  );
}