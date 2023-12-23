import 'package:json_annotation/json_annotation.dart';

part 'registered_students_model.g.dart';

@JsonSerializable()
class RegisteredStudentsModel {
  List<Data> data;

  RegisteredStudentsModel({
    required this.data,
  });

  factory RegisteredStudentsModel.fromJson(Map<String, dynamic> json) =>
      _$RegisteredStudentsModelFromJson(json);

  Map<String, dynamic> toJson() => _$RegisteredStudentsModelToJson(this);
}

@JsonSerializable()
class Data {
  String id;
  @JsonKey(name: 'student_info')
  StudentInfo studentInfo;
  int place;

  Data({
    required this.id,
    required this.studentInfo,
    required this.place,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}

@JsonSerializable()
class StudentInfo {
  String id;
  @JsonKey(name: 'first_name')
  String firstName;
  @JsonKey(name: 'last_name')
  String lastName;
  String image;
  Club club;
  String location;
  Coach coach;

  StudentInfo({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.image,
    required this.club,
    required this.location,
    required this.coach,
  });

  factory StudentInfo.fromJson(Map<String, dynamic> json) =>
      _$StudentInfoFromJson(json);

  Map<String, dynamic> toJson() => _$StudentInfoToJson(this);
}

@JsonSerializable()
class Club {
  String id;
  String name;
  String logo;
  String location;

  Club({
    required this.id,
    required this.name,
    required this.logo,
    required this.location,
  });

  factory Club.fromJson(Map<String, dynamic> json) => _$ClubFromJson(json);

  Map<String, dynamic> toJson() => _$ClubToJson(this);
}

@JsonSerializable()
class Coach {
  String id;
  @JsonKey(name: 'first_name')
  String firstName;
  @JsonKey(name: 'last_name')
  String lastName;
  String image;

  Coach({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.image,
  });

  factory Coach.fromJson(Map<String, dynamic> json) => _$CoachFromJson(json);

  Map<String, dynamic> toJson() => _$CoachToJson(this);
}
