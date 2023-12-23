import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:sportify/screens/students/logic/data/models/registered_students_model.dart';
import 'package:sportify/screens/students/logic/data/repositories%20copy/registered_students_repository.dart';

part 'registered_students_event.dart';
part 'registered_students_state.dart';

class RegisteredStudentsBloc
    extends Bloc<RegisteredStudentsEvent, RegisteredStudentsState> {
  final RegisteredStRepository registeredStRepository;
  RegisteredStudentsBloc(this.registeredStRepository)
      : super(RegisteredStudentsInitial()) {
    on<GetRegisteredStudentsEvent>(
      (event, emit) async {
        emit(RegisteredStudentsLoading());
        try {
          final RegisteredStudentsModel response =
              await registeredStRepository.getRegisteredStudents(
            event.id,
          );
          emit(RegisteredStudentsSuccess(response));
        } on DioError catch (e) {
          emit(RegisteredStudentsFailure(e.response!));
        }
      },
    );
  }
}
