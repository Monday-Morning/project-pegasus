import 'package:mondaymorning/src/api/models/issue/issue.dart';
import 'package:mondaymorning/src/api/models/squiggle/squiggle.dart';

class LandingPageData {
  final List<Issue> latestIssue;
  // final List<Issue>? issues;
  final Squiggle latestSquiggle;

  LandingPageData({
    required this.latestIssue,
    // required this.issues,
    required this.latestSquiggle,
  });
}
