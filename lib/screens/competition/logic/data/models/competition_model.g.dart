// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'competition_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CompetitionModel _$CompetitionModelFromJson(Map<String, dynamic> json) =>
    CompetitionModel(
      data: (json['data'] as List<dynamic>)
          .map((e) => Data.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CompetitionModelToJson(CompetitionModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      id: json['id'] as String,
      name: json['name'] as String,
      startDate: json['start_date'] as String,
      endDate: json['end_date'] as String,
      organizator:
          Organizator.fromJson(json['organizator'] as Map<String, dynamic>),
      location: json['location'] as String,
      address: json['address'] as String,
      federation: json['federation'] as String,
      competitionType: json['competition_type'] as String,
      region: json['region'] as String?,
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'start_date': instance.startDate,
      'end_date': instance.endDate,
      'organizator': instance.organizator,
      'location': instance.location,
      'address': instance.address,
      'federation': instance.federation,
      'competition_type': instance.competitionType,
      'region': instance.region,
    };

Organizator _$OrganizatorFromJson(Map<String, dynamic> json) => Organizator(
      id: json['id'] as String,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
    );

Map<String, dynamic> _$OrganizatorToJson(Organizator instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
    };
