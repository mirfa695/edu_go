// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'popular_courses.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PopularCourses _$PopularCoursesFromJson(Map<String, dynamic> json) =>
    PopularCourses(
      title: json['title'] as String?,
      courses:
          (json['courses'] as List<dynamic>?)
              ?.map((e) => Courses.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$PopularCoursesToJson(PopularCourses instance) =>
    <String, dynamic>{'title': instance.title, 'courses': instance.courses};

Courses _$CoursesFromJson(Map<String, dynamic> json) => Courses(
  title: json['title'] as String?,
  image: json['image'] as String?,
  action: json['action'] as String?,
);

Map<String, dynamic> _$CoursesToJson(Courses instance) => <String, dynamic>{
  'title': instance.title,
  'image': instance.image,
  'action': instance.action,
};
