// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'categories.freezed.dart';
part 'categories.g.dart';

/// Categories data model
@freezed
class Categories with _$Categories {
  @JsonSerializable(explicitToJson: true)
  /// Constructor for Categories
  factory Categories({
    required int number,
    bool? isCategory,
    String? reference,
  }) = _Categories;

  /// a factory function that converts a json object to a dart object.
  factory Categories.fromJson(Map<String, dynamic> json) =>
      _$CategoriesFromJson(json);
}
