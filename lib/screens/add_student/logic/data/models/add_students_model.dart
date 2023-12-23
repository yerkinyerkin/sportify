import 'package:json_annotation/json_annotation.dart';
part 'add_students_model.g.dart';

@JsonSerializable()
class AddStudentsModel {
  String id;
  @JsonKey(name: 'first_name')
  String firstName;
  @JsonKey(name: 'last_name')
  String lastName;
  String image;
  String club;
  String location;
  String coach;
  @JsonKey(name: 'date_of_birth')
  DateTime dateOfBirth;
  dynamic achievement;

  AddStudentsModel({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.image,
    required this.club,
    required this.location,
    required this.coach,
    required this.dateOfBirth,
    required this.achievement,
  });

  factory AddStudentsModel.fromJson(Map<String, dynamic> json) =>
      _$AddStudentsModelFromJson(json);

  Map<String, dynamic> toJson() => _$AddStudentsModelToJson(this);
}
