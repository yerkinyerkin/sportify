// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_students_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterStudentModel _$RegisterStudentModelFromJson(
        Map<String, dynamic> json) =>
    RegisterStudentModel(
      message: json['message'] as String,
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RegisterStudentModelToJson(
        RegisterStudentModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      id: json['id'] as String,
      studentInfo: json['student_info'] as String,
      competition: json['competition'] as String,
      ageCategory: json['age_category'] as String,
      weightCategory: json['weight_category'] as String,
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'id': instance.id,
      'student_info': instance.studentInfo,
      'competition': instance.competition,
      'age_category': instance.ageCategory,
      'weight_category': instance.weightCategory,
    };
