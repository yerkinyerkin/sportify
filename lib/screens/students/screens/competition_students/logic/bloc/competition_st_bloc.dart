import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:sportify/screens/students/screens/competition_students/logic/data/models/competition_st_model.dart';
import 'package:sportify/screens/students/screens/competition_students/logic/data/models/register_students_model.dart';
import 'package:sportify/screens/students/screens/competition_students/logic/data/repositories%20copy/competition_st_repository.dart';

part 'competition_st_event.dart';
part 'competition_st_state.dart';

class CompetitionStBloc
    extends Bloc<CompetitionStEvent, CompetitionStState> {
  final CompetitionStRepository competitionStRepository;
  CompetitionStBloc(this.competitionStRepository)
      : super(CompetitionStInitial()) {
    on<GetCompetitionStEvent>(
      (event, emit) async {
        emit(CompetitionStLoading());
        try {
          final CompetitionStModel response =
              await competitionStRepository.getCompetitionStudents(
            event.id,
          );
          emit(CompetitionStSuccess(response));
        } on DioError catch (e) {
          emit(CompetitionStFailure(e.response!));
        }
      },
    );

    on<RegisterStudentEvent>(
      (event, emit) async {
        emit(RegisterStudentLoading());
        try {
          final RegisterStudentModel response =
              await competitionStRepository.registerStudent(
            event.id,event.studentId,event.age,event.weight
          );
          emit(RegisterStudentSuccess(response));
          log("sucees registered");
        } on DioError catch (e) {
          emit(RegisterStudentFailure(e.response!));
        }
      },
    );
  }
}
