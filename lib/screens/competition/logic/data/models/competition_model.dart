import 'package:json_annotation/json_annotation.dart';

part 'competition_model.g.dart';

@JsonSerializable()
class CompetitionModel {
  List<Data> list;

  CompetitionModel({required this.list});

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
  String organizators;
  String location;
  String address;
  int federation;

  Data(
      {required this.id,
      required this.name,
      required this.startDate,
      required this.endDate,
      required this.organizators,
      required this.location,
      required this.address,
      required this.federation});

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}
