import 'package:mondaymorning/src/api/repositories/squiggle/squiggle_repository_provider.dart';
import 'package:mondaymorning/src/store/states/home_page/home_page_data_type.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:mondaymorning/src/api/repositories/issue/issue_repository_provider.dart';

part 'home_page_provider.g.dart';

@riverpod
Future<HomePageData> homePageData(HomePageDataRef ref) async {
  return HomePageData(
    latestIssue: await ref.read(issueRepositoryProvider).getLatestIssue(),
    // issues: await graphIssueRepository.getIssues(limit: 10, onlyPublished: true),
    latestSquiggle:
        await ref.read(squiggleRepositoryProvider).getLatestSquiggle(),
  );
}
