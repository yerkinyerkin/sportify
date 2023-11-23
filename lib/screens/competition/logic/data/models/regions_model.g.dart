// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'regions_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegionsModel _$RegionsModelFromJson(Map<String, dynamic> json) => RegionsModel(
      data: (json['data'] as List<dynamic>)
          .map((e) => Data.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RegionsModelToJson(RegionsModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      slug: json['slug'] as String,
      region: json['region'] as String,
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'slug': instance.slug,
      'region': instance.region,
    };
