import 'package:json_annotation/json_annotation.dart';

part 'hero_banners.g.dart';

@JsonSerializable()
class HeroBanner {
  final String? title;
  final String? image;
 @JsonKey(name: "is_active") final bool? isActive;

  HeroBanner({
    this.title,
    this.image,
    this.isActive,
  });

  factory HeroBanner.fromJson(Map<String, dynamic> json) =>
      _$HeroBannerFromJson(json);

  Map<String, dynamic> toJson() => _$HeroBannerToJson(this);
}