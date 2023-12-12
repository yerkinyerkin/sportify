// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grid_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GridModel _$GridModelFromJson(Map<String, dynamic> json) => GridModel(
      data: (json['data'] as List<dynamic>)
          .map((e) => Data.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GridModelToJson(GridModel instance) => <String, dynamic>{
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      id: json['id'] as String,
      redCorner: json['red_corner'] == null
          ? null
          : RedCorner.fromJson(json['red_corner'] as Map<String, dynamic>),
      blueCorner: json['blue_corner'] == null
          ? null
          : BlueCorner.fromJson(json['blue_corner'] as Map<String, dynamic>),
      redCornerWinner: json['red_corner_winner'] as bool,
      blueCornerWinner: json['blue_corner_winner'] as bool,
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'id': instance.id,
      'red_corner': instance.redCorner,
      'blue_corner': instance.blueCorner,
      'red_corner_winner': instance.redCornerWinner,
      'blue_corner_winner': instance.blueCornerWinner,
    };

RedCorner _$RedCornerFromJson(Map<String, dynamic> json) => RedCorner(
      id: json['id'] as String?,
      studentInfo: json['student_info'] == null
          ? null
          : StudentInfo.fromJson(json['student_info'] as Map<String, dynamic>),
      place: json['place'] as int?,
    );

Map<String, dynamic> _$RedCornerToJson(RedCorner instance) => <String, dynamic>{
      'id': instance.id,
      'student_info': instance.studentInfo,
      'place': instance.place,
    };

BlueCorner _$BlueCornerFromJson(Map<String, dynamic> json) => BlueCorner(
      id: json['id'] as String?,
      studentInfo: json['student_info'] == null
          ? null
          : StudentInfo.fromJson(json['student_info'] as Map<String, dynamic>),
      place: json['place'] as int?,
    );

Map<String, dynamic> _$BlueCornerToJson(BlueCorner instance) =>
    <String, dynamic>{
      'id': instance.id,
      'student_info': instance.studentInfo,
      'place': instance.place,
    };

StudentInfo _$StudentInfoFromJson(Map<String, dynamic> json) => StudentInfo(
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
