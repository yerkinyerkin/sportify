import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:sportify/screens/coach_students/logic/data/repositories/coach_students_repositories.dart';
import 'package:sportify/screens/profile/logic/data/models/profile_model.dart';

part 'coach_students_event.dart';
part 'coach_students_state.dart';

class CoachStudentsBloc extends Bloc<CoachStudentsEvent, CoachStudentsState> {
  final CoachStudentsRepository coachStudentsRepository;
  CoachStudentsBloc(this.coachStudentsRepository)
      : super(CoachStudentsInitial()) {
    on<CoachStudentsList>(
      (event, emit) async {
        emit(CoachStudentsLoading());
        try {
          final List<ProfileModel> coachStudentsList =
              await coachStudentsRepository.getCoachStudents();
          emit(CoachStudentsSuccess(coachStudentsList));
        } on DioError catch (e) {
          emit(CoachStudentsFailure(e.response!));
        }
      },
    );
  }
}
