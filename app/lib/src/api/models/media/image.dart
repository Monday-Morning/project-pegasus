import 'package:freezed_annotation/freezed_annotation.dart';

part 'image.freezed.dart';
part 'image.g.dart';

@freezed
class Image with _$Image {
  const factory Image({
    required String store,
    required String storePath,
    String? mediaType,
    String? blurhash,
  }) = _Image;

  factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);
}
