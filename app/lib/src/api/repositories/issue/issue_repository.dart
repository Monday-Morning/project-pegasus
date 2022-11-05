import 'package:mondaymorning/src/api/models/issue/issue.dart';

abstract class IssueRepository {
  Future<Issue> getLatestIssue();
  Future<List<Issue>> getIssues(
      {required int limit, required bool onlyPublished});
}
