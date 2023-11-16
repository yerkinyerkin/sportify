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
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      club: Club.fromJson(json['club'] as Map<String, dynamic>),
      competition: json['competition'] as String,
      redCorner: json['red_corner'] as String,
      blueCorner: json['blue_corner'] as String,
      parent: json['parent'] as String,
      ageCategory: json['age_category'] as String,
      weightCategory: json['weight_category'] as String,
      winner: json['winner'] as String,
      level: json['level'] as int,
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'club': instance.club,
      'competition': instance.competition,
      'red_corner': instance.redCorner,
      'blue_corner': instance.blueCorner,
      'parent': instance.parent,
      'age_category': instance.ageCategory,
      'weight_category': instance.weightCategory,
      'winner': instance.winner,
      'level': instance.level,
    };

Club _$ClubFromJson(Map<String, dynamic> json) => Club(
      logo: json['logo'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$ClubToJson(Club instance) => <String, dynamic>{
      'logo': instance.logo,
      'name': instance.name,
    };
