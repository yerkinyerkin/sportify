import 'package:json_annotation/json_annotation.dart';

part 'profile_model.g.dart';

@JsonSerializable()
class ProfileModel {
  String? id;
  @JsonKey(name: "first_name")
  String? firstName;
  @JsonKey(name: "last_name")
  String? lastName;
  String? image;
  Club? club;
  String? location;
  Coach? coach;
  @JsonKey(name: "date_of_birth")
  String? dateOfBirth;
  String? achievement;
  @JsonKey(name: "last_republic_result")
  String? lastRepublicResult;

  ProfileModel({
    this.id,
    this.firstName,
    this.lastName,
    this.image,
    this.club,
    this.location,
    this.coach,
    this.dateOfBirth,
    this.achievement,
    this.lastRepublicResult,
  });

  factory ProfileModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProfileModelToJson(this);
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
  @JsonKey(name: "first_name")
  String? firstName;
  @JsonKey(name: "last_name")
  String? lastName;
  String? image;

  Coach({this.id, this.firstName, this.lastName, this.image});

  factory Coach.fromJson(Map<String, dynamic> json) => _$CoachFromJson(json);

  Map<String, dynamic> toJson() => _$CoachToJson(this);
}
