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
  @JsonKey(name: 'first_name')
  String firstName;
  @JsonKey(name: 'last_name')
  String lastName;
  Club club;
  String competition;
  @JsonKey(name: 'red_corner')
  String redCorner;
  @JsonKey(name: 'blue_corner')
  String blueCorner;
  String parent;
  @JsonKey(name: 'age_category')
  String ageCategory;
  @JsonKey(name: 'weight_category')
  String weightCategory;
  String winner;
  int level;

  Data({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.club,
    required this.competition,
    required this.redCorner,
    required this.blueCorner,
    required this.parent,
    required this.ageCategory,
    required this.weightCategory,
    required this.winner,
    required this.level,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}

@JsonSerializable()
class Club {
  String logo;
  String name;

  Club({required this.logo, required this.name});

  factory Club.fromJson(Map<String, dynamic> json) => _$ClubFromJson(json);

  Map<String, dynamic> toJson() => _$ClubToJson(this);
}
