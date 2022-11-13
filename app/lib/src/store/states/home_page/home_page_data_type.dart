import 'package:mondaymorning/src/api/models/issue/issue.dart';
import 'package:mondaymorning/src/api/models/squiggle/squiggle.dart';

class HomePageData {
  final Issue latestIssue;
  // final List<Issue>? issues;
  final Squiggle latestSquiggle;

  HomePageData({
    required this.latestIssue,
    // required this.issues,
    required this.latestSquiggle,
  });
}
