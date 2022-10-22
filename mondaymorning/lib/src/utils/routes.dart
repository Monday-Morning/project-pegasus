import 'package:flutter/material.dart';

class CategoriesClass{
  String name;
  String shortName;
  int idNumber;
  List<int> subCategoriesIds;

  CategoriesClass(@required this.name, @required this.shortName, @required this.idNumber,@required this.subCategoriesIds);
}

// ------------------- categories ----------------------------

Map<String, CategoriesClass> categoriesRoutes = {
  'campus': CategoriesClass(
      'Campus', 'campus', 1, [11, 12, 13, 14, 15, 16, 17]),
  'connect': CategoriesClass('Connect', 'connect', 2, [21, 22, 23, 24]),
  'ddcwc': CategoriesClass('DD & CWC', 'ddcwc', 3, [31, 32]),
  'career': CategoriesClass('Career', 'career', 4, [41, 42, 43, 44]),
  'alumni': CategoriesClass('Alumni', 'alumni', 5, [51, 52]),
  'expressions': CategoriesClass(
      'Expressions', 'expressions', 1, [61, 62, 63, 64, 65, 66, 67]),
};

// ------------------- sub-categories -----------------------

class SubCategoriesClass{
  final String name;
  final String shortName;
  final int idNumber;

  SubCategoriesClass(@required this.name, @required this.shortName, @required this.idNumber);
}

Map<String, SubCategoriesClass> campus = {
  'academics': SubCategoriesClass('Academics', 'academics', 11),
  'campusBuzz': SubCategoriesClass('Campus Buzz', 'campusBuzz', 12),
  'forum': SubCategoriesClass('Forum', 'forum', 13),
  'studentActivities': SubCategoriesClass('Student Activities', 'studentActivities', 14),
  'halls': SubCategoriesClass('Halls', 'halls', 15),
  'pollAnalysis': SubCategoriesClass('Poll Analysis', 'pollAnalysis', 16),
  'admissions': SubCategoriesClass('Admissions', 'admissions', 17),
};

Map<String, SubCategoriesClass> connect = {
  'interviews': SubCategoriesClass('Interviews', 'interviews', 21),
  'sacSpeaks': SubCategoriesClass('Sac Speaks', 'sacSpeaks', 22),
  'cgpa': SubCategoriesClass('CGPA', 'cgpa', 23),
  'guestInterview': SubCategoriesClass('Guest Interview', 'guestInterview', 24),
};

Map<String, SubCategoriesClass> ddcwc = {
  'directorsDesk': SubCategoriesClass('Director\'s Desk', 'directorsDesk', 31),
  'chiefWardensColumn': SubCategoriesClass(
      'Chief Warden\'s Column', 'chiefWardensColumn', 32),
};

Map<String, SubCategoriesClass> career = {
  'placements': SubCategoriesClass('Placements', 'placements', 41),
  'internships': SubCategoriesClass('Internships', 'internships', 42),
  'higherEducation': SubCategoriesClass(
      'Higher Education', 'higherEducation', 43),
  'guidance': SubCategoriesClass('Guidance', 'guidance', 44),
};

Map<String, SubCategoriesClass> alumni = {
  'alumnusSpeaks': SubCategoriesClass('Alumnus Speaks', 'alumnusSpeaks', 51),
  'alumniAffairs': SubCategoriesClass('Alumni Affairs', 'alumniAffairs', 52),
};

Map<String, Map<String, SubCategoriesClass>> subCategoriesRoutes = {
  'campus' : campus,
  'connect' : connect,
  'ddcwc': ddcwc,
  'career': career,
  'alumni': alumni
};