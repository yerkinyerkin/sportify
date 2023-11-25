import 'package:json_annotation/json_annotation.dart';

part 'grid_model.g.dart';

@JsonSerializable()
class GridModel {
  List<Data> data;

  GridModel({required this.data});

  factory GridModel.fromJson(Map<String, dynamic> json) =>
      _$GridModelFromJson(json);

  Map<String, dynamic> toJson() => _$GridModelToJson(this);
}

@JsonSerializable()
class Data {
  String id;
  @JsonKey(name: 'red_corner')
  RedCorner? redCorner;
  @JsonKey(name: 'blue_corner')
  BlueCorner? blueCorner;
  @JsonKey(name: 'red_corner_winner')
  bool redCornerWinner;
  @JsonKey(name: 'blue_corner_winner')
  bool blueCornerWinner;

  Data(
      {required this.id,
      this.redCorner,
      this.blueCorner,
      required this.redCornerWinner,
      required this.blueCornerWinner});

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}

@JsonSerializable()
class RedCorner {
  String? id;
  @JsonKey(name: 'student_info')
  StudentInfo? studentInfo;
  String? place;

  RedCorner({this.id, this.studentInfo, this.place});

  factory RedCorner.fromJson(Map<String, dynamic> json) =>
      _$RedCornerFromJson(json);

  Map<String, dynamic> toJson() => _$RedCornerToJson(this);
}

@JsonSerializable()
class BlueCorner {
  String? id;
  @JsonKey(name: 'student_info')
  StudentInfo? studentInfo;
  String? place;

  BlueCorner({this.id, this.studentInfo, this.place});

  factory BlueCorner.fromJson(Map<String, dynamic> json) =>
      _$BlueCornerFromJson(json);

  Map<String, dynamic> toJson() => _$BlueCornerToJson(this);
}

@JsonSerializable()
class StudentInfo {
  String? id;
  @JsonKey(name: 'first_name')
  String? firstName;
  @JsonKey(name: 'last_name')
  String? lastName;
  String? image;
  Club? club;
  String? location;
  Coach? coach;

  StudentInfo(
      {this.id,
      this.firstName,
      this.lastName,
      this.image,
      this.club,
      this.location,
      this.coach});

  factory StudentInfo.fromJson(Map<String, dynamic> json) =>
      _$StudentInfoFromJson(json);

  Map<String, dynamic> toJson() => _$StudentInfoToJson(this);
}

@JsonSerializable()
class Club {
  String? id;
  String? name;
  String? logo;
  String? location;

  Club({this.id, this.name, this.logo, this.location});

  factory Club.fromJson(Map<String, dynamic> json) => _$ClubFromJson(json);

  Map<String, dynamic> toJson() => _$ClubToJson(this);
}

@JsonSerializable()
class Coach {
  String? id;
  @JsonKey(name: 'first_name')
  String? firstName;
  @JsonKey(name: 'last_name')
  String? lastName;
  String? image;

  Coach({this.id, this.firstName, this.lastName, this.image});

  factory Coach.fromJson(Map<String, dynamic> json) => _$CoachFromJson(json);

  Map<String, dynamic> toJson() => _$CoachToJson(this);
}
