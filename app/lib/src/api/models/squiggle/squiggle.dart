import 'package:freezed_annotation/freezed_annotation.dart';

part 'squiggle.freezed.dart';
part 'squiggle.g.dart';

@freezed
class Squiggle with _$Squiggle {
  const factory Squiggle({
    required String id,
    required String content,
    DateTime? createdAt,
    String? createdBy,
    DateTime? updatedAt,
    String? updatedBy,
  }) = _Squiggle;

  factory Squiggle.fromJson(Map<String, dynamic> json) =>
      _$SquiggleFromJson(json);
}
