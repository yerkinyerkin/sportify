import 'dart:developer';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:sportify/screens/add_student/logic/data/models/add_students_model.dart';
import 'package:sportify/screens/add_student/logic/data/repositories/add_student_repository.dart';


part 'add_student_event.dart';
part 'add_student_state.dart';

class AddStudentBloc extends Bloc<AddStudentEvent, AddStudentState> {
  final AddStudentRepository addStudentRepository;
  AddStudentBloc(this.addStudentRepository) : super(AddStudentInitial()) {
    on<AddStudentsCommon>(
      (event, emit) async {
        emit(AddStudentLoading());
        try {
          final AddStudentsModel response =
              await addStudentRepository.addStudents(event.image,event.firstName,event.lastName,event.dateOfBirth,);
          emit(AddStudentSuccess(response: response));
          log('Successfully added');
        } on DioError catch (e) {
          emit(AddStudentFailure(e.response!));
        }
      },
    );
  }
}
