import 'package:json_annotation/json_annotation.dart';
part 'register_students_model.g.dart';

@JsonSerializable()
class RegisterStudentModel {
  String message;
  Data data;

  RegisterStudentModel({
    required this.message,
    required this.data,
  });

   factory RegisterStudentModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterStudentModelFromJson(json);

  Map<String, dynamic> toJson() => _$RegisterStudentModelToJson(this);
}
@JsonSerializable()
class Data {
  String id;
  @JsonKey(name: 'student_info')
  String studentInfo;
  String competition;
  @JsonKey(name: 'age_category')
  String ageCategory;
  @JsonKey(name: 'weight_category')
  String weightCategory;

  Data({
    required this.id,
    required this.studentInfo,
    required this.competition,
    required this.ageCategory,
    required this.weightCategory,
  });

  factory Data.fromJson(Map<String, dynamic> json) =>
      _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}
