// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileModel _$ProfileModelFromJson(Map<String, dynamic> json) => ProfileModel(
      id: json['id'] as String?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      image: json['image'] as String?,
      club: json['club'] == null
          ? null
          : Club.fromJson(json['club'] as Map<String, dynamic>),
      location: json['location'] as String?,
      coach: json['coach'] == null
          ? null
          : Coach.fromJson(json['coach'] as Map<String, dynamic>),
      dateOfBirth: json['date_of_birth'] as String?,
      achievement: json['achievement'] as String?,
      lastRepublicResult: json['last_republic_result'] as String?,
    );

Map<String, dynamic> _$ProfileModelToJson(ProfileModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'image': instance.image,
      'club': instance.club,
      'location': instance.location,
      'coach': instance.coach,
      'date_of_birth': instance.dateOfBirth,
      'achievement': instance.achievement,
      'last_republic_result': instance.lastRepublicResult,
    };

Club _$ClubFromJson(Map<String, dynamic> json) => Club(
      id: json['id'] as String?,
      name: json['name'] as String?,
      logo: json['logo'] as String?,
      location: json['location'] as String?,
    );

Map<String, dynamic> _$ClubToJson(Club instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'logo': instance.logo,
      'location': instance.location,
    };

Coach _$CoachFromJson(Map<String, dynamic> json) => Coach(
      id: json['id'] as String?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$CoachToJson(Coach instance) => <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'image': instance.image,
    };
