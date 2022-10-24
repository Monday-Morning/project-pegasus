import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mondaymorning/src/models/issues/latest_issue.dart';

part 'latest_issue_state.freezed.dart';

/// State declaration for all states of Article
@freezed
class LatestIssueState with _$LatestIssueState {
  /// Initial state of Articles List.
  const factory LatestIssueState() = _Initial;

  /// Loading state of Article.
  const factory LatestIssueState.loading() = _Loading;

  /// Success state of Article List. Provides the list of articles to the UI.
  const factory LatestIssueState.success(LatestIssue latestIssue) = _Success;

  /// Error state of Article.
  const factory LatestIssueState.error(String message) = _Error;
}
