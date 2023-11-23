import 'package:json_annotation/json_annotation.dart';

part 'regions_model.g.dart';

@JsonSerializable()
class RegionsModel {
  List<Data> data;

  RegionsModel({required this.data});

  factory RegionsModel.fromJson(Map<String, dynamic> json) =>
      _$RegionsModelFromJson(json);

  Map<String, dynamic> toJson() => _$RegionsModelToJson(this);
}

@JsonSerializable()
class Data {
  String slug;
  String region;

  Data({
    required this.slug,
    required this.region,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}
