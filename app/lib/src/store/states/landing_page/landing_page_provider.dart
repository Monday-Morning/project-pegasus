import 'package:mondaymorning/src/store/states/landing_page/landing_page_data_type.dart';
import 'package:mondaymorning/src/api/repositories/squiggle/squiggle_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:mondaymorning/src/api/repositories/issue/issue_repository_provider.dart';

part 'landing_page_provider.g.dart';

@riverpod
Future<LandingPageData> landingPageData(LandingPageDataRef ref) async {
  return LandingPageData(
    latestIssue: await ref.read(issueRepositoryProvider).getIssues(limit: 2, onlyPublished: false),
    // issues: await graphIssueRepository.getIssues(limit: 10, onlyPublished: true),
    latestSquiggle:
        await ref.read(squiggleRepositoryProvider).getLatestSquiggle(),
  );
}
