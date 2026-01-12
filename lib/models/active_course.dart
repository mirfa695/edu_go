import 'package:json_annotation/json_annotation.dart';

part 'active_course.g.dart';

@JsonSerializable()
class ActiveCourse {
  final String? title;
  @JsonKey(name: "tests_completed") final double? testsCompleted;
  @JsonKey(name: "total_tests") final double? totalTests;
  final double? progress;

  ActiveCourse({
    this.title,
    this.totalTests,
    this.testsCompleted,
    this.progress,
  });

  factory ActiveCourse.fromJson(Map<String, dynamic> json) =>
      _$ActiveCourseFromJson(json);

  Map<String, dynamic> toJson() => _$ActiveCourseToJson(this);
}