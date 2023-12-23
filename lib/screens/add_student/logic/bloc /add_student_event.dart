part of 'add_student_bloc.dart';

abstract class AddStudentEvent {}

class AddStudentsCommon extends AddStudentEvent {
 final File image;
 final String firstName;
 final String lastName;
 
 final String dateOfBirth;

  AddStudentsCommon({required this.image, required this.firstName, required this.lastName,   required this.dateOfBirth, });
}
