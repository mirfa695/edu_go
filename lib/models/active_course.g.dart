// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'active_course.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ActiveCourse _$ActiveCourseFromJson(Map<String, dynamic> json) => ActiveCourse(
  title: json['title'] as String?,
  totalTests: (json['total_tests'] as num?)?.toDouble(),
  testsCompleted: (json['tests_completed'] as num?)?.toDouble(),
  progress: (json['progress'] as num?)?.toDouble(),
);

Map<String, dynamic> _$ActiveCourseToJson(ActiveCourse instance) =>
    <String, dynamic>{
      'title': instance.title,
      'tests_completed': instance.testsCompleted,
      'total_tests': instance.totalTests,
      'progress': instance.progress,
    };
