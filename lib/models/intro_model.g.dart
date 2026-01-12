// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'intro_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IntroModel _$IntroModelFromJson(Map<String, dynamic> json) => IntroModel(
  name: json['name'] as String?,
  greeting: json['greeting'] as String?,
  streakDays: (json['streakDays'] as num?)?.toInt(),
);

Map<String, dynamic> _$IntroModelToJson(IntroModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'greeting': instance.greeting,
      'streakDays': instance.streakDays,
    };
