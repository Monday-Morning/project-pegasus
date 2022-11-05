import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mondaymorning/src/api/models/media/image.dart';

part 'cover_media.freezed.dart';
part 'cover_media.g.dart';

@freezed
class CoverMedia with _$CoverMedia {
  const factory CoverMedia({
    String? squareID,
    Image? square,
    String? rectangleID,
    Image? rectangle,
  }) = _CoverMedia;

  factory CoverMedia.fromJson(Map<String, dynamic> json) =>
      _$CoverMediaFromJson(json);
}
