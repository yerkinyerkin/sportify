// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'competition_st_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CompetitionStModel _$CompetitionStModelFromJson(Map<String, dynamic> json) =>
    CompetitionStModel(
      data: (json['data'] as List<dynamic>)
          .map((e) => Data.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CompetitionStModelToJson(CompetitionStModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      id: json['id'] as String,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      image: json['image'] as String,
      club: Club.fromJson(json['club'] as Map<String, dynamic>),
      location: json['location'] as String,
      coach: Coach.fromJson(json['coach'] as Map<String, dynamic>),
      dateOfBirth: DateTime.parse(json['date_of_birth'] as String),
      registered: json['registered'] as bool,
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'image': instance.image,
      'club': instance.club,
      'location': instance.location,
      'coach': instance.coach,
      'date_of_birth': instance.dateOfBirth.toIso8601String(),
      'registered': instance.registered,
    };

Club _$ClubFromJson(Map<String, dynamic> json) => Club(
      id: json['id'] as String,
      name: json['name'] as String,
      logo: json['logo'] as String,
      location: json['location'] as String,
    );

Map<String, dynamic> _$ClubToJson(Club instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'logo': instance.logo,
      'location': instance.location,
    };

Coach _$CoachFromJson(Map<String, dynamic> json) => Coach(
      id: json['id'] as String,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      image: json['image'] as String,
    );

Map<String, dynamic> _$CoachToJson(Coach instance) => <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'image': instance.image,
    };
