import 'package:json_annotation/json_annotation.dart';

part 'winners_model.g.dart';

@JsonSerializable()
class WinnersModel {
  List<DataWinners> data;

  WinnersModel({
    required this.data,
  });

  factory WinnersModel.fromJson(Map<String, dynamic> json) =>
      _$WinnersModelFromJson(json);

  Map<String, dynamic> toJson() => _$WinnersModelToJson(this);
}

@JsonSerializable()
class DataWinners {
  String id;
  @JsonKey(name: 'student_info')
  StudentInfo studentInfo;
  int place;

  DataWinners({
    required this.id,
    required this.studentInfo,
    required this.place,
  });

  factory DataWinners.fromJson(Map<String, dynamic> json) =>
      _$DataWinnersFromJson(json);

  Map<String, dynamic> toJson() => _$DataWinnersToJson(this);
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
