import 'package:freezed_annotation/freezed_annotation.dart';

part 'block_formatting.freezed.dart';
part 'block_formatting.g.dart';

@freezed
class BlockFormatting with _$BlockFormatting {
  const factory BlockFormatting({
    String? align,
    bool? hasHeaderRow,
    bool? hasHeaderColumn,
    String? listStyle,
  }) = _BlockFormatting;

  factory BlockFormatting.fromJson(Map<String, dynamic> json) =>
      _$BlockFormattingFromJson(json);
}
