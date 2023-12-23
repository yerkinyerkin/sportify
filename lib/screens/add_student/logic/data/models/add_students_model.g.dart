// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_students_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddStudentsModel _$AddStudentsModelFromJson(Map<String, dynamic> json) =>
    AddStudentsModel(
      id: json['id'] as String,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      image: json['image'] as String,
      club: json['club'] as String,
      location: json['location'] as String,
      coach: json['coach'] as String,
      dateOfBirth: DateTime.parse(json['date_of_birth'] as String),
      achievement: json['achievement'],
    );

Map<String, dynamic> _$AddStudentsModelToJson(AddStudentsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'image': instance.image,
      'club': instance.club,
      'location': instance.location,
      'coach': instance.coach,
      'date_of_birth': instance.dateOfBirth.toIso8601String(),
      'achievement': instance.achievement,
    };
