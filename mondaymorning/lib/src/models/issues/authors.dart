// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'authors.freezed.dart';
part 'authors.g.dart';

/// Image data model
@freezed
class Image with _$Image {
  @JsonSerializable(explicitToJson: true)
  /// Constructor for Image
  factory Image({
    required String store,
    required String storePath,
    String? blurhash,
  }) = _Image;

  /// a factory function that converts a json object to a dart object.
  factory Image.fromJson(Map<String, dynamic> json) =>
      _$ImageFromJson(json);
}

/// Users data model
@freezed
class User with _$User {
  @JsonSerializable(explicitToJson: true)
  /// Constructor for Users
  factory User({
    required Image picture,
  }) = _User;

  /// a factory function that converts a json object to a dart object.
  factory User.fromJson(Map<String, dynamic> json) =>
      _$UserFromJson(json);
}

/// Authors data model
@freezed
class Authors with _$Authors {
  @JsonSerializable(explicitToJson: true)
  /// Constructor for Authors
  factory Authors({
    required String name,
    required String details,
    User? user,
  }) = _Authors;

  /// a factory function that converts a json object to a dart object.
  factory Authors.fromJson(Map<String, dynamic> json) =>
      _$AuthorsFromJson(json);
}
