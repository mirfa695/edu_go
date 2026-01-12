// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hero_banners.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HeroBanner _$HeroBannerFromJson(Map<String, dynamic> json) => HeroBanner(
  title: json['title'] as String?,
  image: json['image'] as String?,
  isActive: json['is_active'] as bool?,
);

Map<String, dynamic> _$HeroBannerToJson(HeroBanner instance) =>
    <String, dynamic>{
      'title': instance.title,
      'image': instance.image,
      'is_active': instance.isActive,
    };
