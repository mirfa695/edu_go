import 'package:json_annotation/json_annotation.dart';

part 'popular_courses.g.dart';

@JsonSerializable()
class PopularCourses {
  final String? title;
 final List<Courses>? courses;

  PopularCourses({
    this.title,
   this.courses
  });

  factory PopularCourses.fromJson(Map<String, dynamic> json) =>
      _$PopularCoursesFromJson(json);

  Map<String, dynamic> toJson() => _$PopularCoursesToJson(this);
}
@JsonSerializable()
class Courses {
  final String? title;
  final String? image;
  final String? action;

  Courses({
    this.title,
    this.image,
    this.action,
  });

  factory Courses.fromJson(Map<String, dynamic> json) =>
      _$CoursesFromJson(json);

  Map<String, dynamic> toJson() => _$CoursesToJson(this);
}