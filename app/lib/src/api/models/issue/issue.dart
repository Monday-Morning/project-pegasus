import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mondaymorning/src/api/models/article/article.dart';
import 'package:mondaymorning/src/api/models/media/image.dart';

part 'issue.freezed.dart';
part 'issue.g.dart';

@freezed
class Issue with _$Issue {
  const factory Issue({
    required String id,
    String? name,
    Image? thumbnail,
    String? description,
    bool? isPublished,
    DateTime? startDate,
    DateTime? endDate,
    List<String>? articleIDs,
    List<Article>? articles,
    List<String>? featuredIDs,
    List<Article>? featured,
    DateTime? createdAt,
    String? createdBy,
    DateTime? updatedAt,
    String? updatedBy,
  }) = _Image;

  factory Issue.fromJson(Map<String, dynamic> json) => _$IssueFromJson(json);
}
