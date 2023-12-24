import 'package:json_annotation/json_annotation.dart';

part 'competition_model.g.dart';

@JsonSerializable()
class CompetitionModel {
  List<Data> data;

  CompetitionModel({required this.data});

  factory CompetitionModel.fromJson(Map<String, dynamic> json) =>
      _$CompetitionModelFromJson(json);

  Map<String, dynamic> toJson() => _$CompetitionModelToJson(this);
}

@JsonSerializable()
class Data {
  String id;
  String name;
  @JsonKey(name: 'start_date')
  String startDate;
  @JsonKey(name: 'end_date')
  String endDate;
  Organizator organizator;
  String location;
  String address;
  String federation;
  @JsonKey(name: 'competition_type')
  String competitionType;
  String? region;
  @JsonKey(name: 'registration_finished')
  bool? registrationFinished;

  Data(
      {required this.id,
      required this.name,
      required this.startDate,
      required this.endDate,
      required this.organizator,
      required this.location,
      required this.address,
      required this.federation,
      required this.competitionType,
      this.region,
      this.registrationFinished});

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}

@JsonSerializable()
class Organizator {
  String id;
  @JsonKey(name: 'first_name')
  String firstName;
  @JsonKey(name: 'last_name')
  String lastName;

  Organizator(
      {required this.id, required this.firstName, required this.lastName});

  factory Organizator.fromJson(Map<String, dynamic> json) =>
      _$OrganizatorFromJson(json);

  Map<String, dynamic> toJson() => _$OrganizatorToJson(this);
}
