// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registered_students_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisteredStudentsModel _$RegisteredStudentsModelFromJson(
        Map<String, dynamic> json) =>
    RegisteredStudentsModel(
      data: (json['data'] as List<dynamic>)
          .map((e) => Data.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RegisteredStudentsModelToJson(
        RegisteredStudentsModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      id: json['id'] as String,
      studentInfo:
          StudentInfo.fromJson(json['student_info'] as Map<String, dynamic>),
      ageCategory: json['age_category'] as String,
      weightCategory: json['weight_category'] as String,
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'id': instance.id,
      'student_info': instance.studentInfo,
      'age_category': instance.ageCategory,
      'weight_category': instance.weightCategory,
    };

StudentInfo _$StudentInfoFromJson(Map<String, dynamic> json) => StudentInfo(
      id: json['id'] as String,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      image: json['image'] as String,
      club: Club.fromJson(json['club'] as Map<String, dynamic>),
      location: json['location'] as String,
      coach: Coach.fromJson(json['coach'] as Map<String, dynamic>),
      dateOfBirth: json['date_of_birth'] as String,
    );

Map<String, dynamic> _$StudentInfoToJson(StudentInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'image': instance.image,
      'club': instance.club,
      'location': instance.location,
      'coach': instance.coach,
      'date_of_birth': instance.dateOfBirth,
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
