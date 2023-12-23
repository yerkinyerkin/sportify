part of 'registered_students_bloc.dart';

abstract class RegisteredStudentsEvent {}

class GetRegisteredStudentsEvent extends RegisteredStudentsEvent {
  final String id;

  GetRegisteredStudentsEvent(
    this.id,
  );
}
