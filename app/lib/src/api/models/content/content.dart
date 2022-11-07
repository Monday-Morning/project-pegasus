import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mondaymorning/src/api/models/content/block_formatting.dart';
import 'package:mondaymorning/src/api/models/media/image.dart';

part 'content.freezed.dart';
part 'content.g.dart';

@freezed
class Content with _$Content {
  const factory Content({
    required String text,
    Map<String, dynamic>? data,
    required String contentType,
    BlockFormatting? blockFormatting,
    Image? media,
  }) = _Content;

  factory Content.fromJson(Map<String, dynamic> json) =>
      _$ContentFromJson(json);
}
