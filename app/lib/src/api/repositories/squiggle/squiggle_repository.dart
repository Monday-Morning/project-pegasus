// ignore_for_file: one_member_abstracts

import 'package:mondaymorning/src/api/models/squiggle/squiggle.dart';

abstract class SquiggleRepository {
  Future<Squiggle> getLatestSquiggle();
}
