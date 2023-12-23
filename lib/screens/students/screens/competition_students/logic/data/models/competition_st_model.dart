import 'package:json_annotation/json_annotation.dart';

part 'competition_st_model.g.dart';

@JsonSerializable()
class CompetitionStModel {
  List<Data> data;

  CompetitionStModel({
    required this.data,
  });

   factory CompetitionStModel.fromJson(Map<String, dynamic> json) =>
      _$CompetitionStModelFromJson(json);

  Map<String, dynamic> toJson() => _$CompetitionStModelToJson(this);
}

@JsonSerializable()
class Data {
  String id;
  @JsonKey(name: 'first_name')
  String firstName;
  @JsonKey(name: 'last_name')
  String lastName;
  String image;
  Club club;
  String location;
  Coach coach;
  @JsonKey(name: 'date_of_birth')
  DateTime dateOfBirth;
  bool registered;

  Data({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.image,
    required this.club,
    required this.location,
    required this.coach,
    required this.dateOfBirth,
    required this.registered,
  });

  factory Data.fromJson(Map<String, dynamic> json) =>
      _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
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

   factory Club.fromJson(Map<String, dynamic> json) =>
      _$ClubFromJson(json);

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

   factory Coach.fromJson(Map<String, dynamic> json) =>
      _$CoachFromJson(json);

  Map<String, dynamic> toJson() => _$CoachToJson(this);
}
