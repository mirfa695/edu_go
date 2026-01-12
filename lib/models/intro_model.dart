import 'package:json_annotation/json_annotation.dart';

part 'intro_model.g.dart';

@JsonSerializable()
class IntroModel {
  final String? name;
  final String? greeting;
  final int? streakDays;

  IntroModel({
    this.name,
    this.greeting,
    this.streakDays,
  });

  factory IntroModel.fromJson(Map<String, dynamic> json) =>
      _$IntroModelFromJson(json);

  Map<String, dynamic> toJson() => _$IntroModelToJson(this);
}
