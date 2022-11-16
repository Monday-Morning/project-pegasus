class CategoriesClass {
  String name;
  String shortName;
  int idNumber;
  List<int> subCategoriesIds;

  CategoriesClass(
      {required this.name,
      required this.shortName,
      required this.idNumber,
      required this.subCategoriesIds});
}

// ------------------- categories ----------------------------

Map<String, CategoriesClass> categoriesRoutes = {
  'campus': CategoriesClass(
      name: 'Campus',
      shortName: 'campus',
      idNumber: 1,
      subCategoriesIds: [11, 12, 14, 15, 16, 17]),
  'connect': CategoriesClass(
      name: 'Connect',
      shortName: 'connect',
      idNumber: 2,
      subCategoriesIds: [21, 22, 23, 24]),
  'ddcwc': CategoriesClass(
      name: 'DD & CWC',
      shortName: 'ddcwc',
      idNumber: 3,
      subCategoriesIds: [31, 32]),
  'career': CategoriesClass(
      name: 'Career',
      shortName: 'career',
      idNumber: 4,
      subCategoriesIds: [41, 42, 43, 44]),
  'alumni': CategoriesClass(
      name: 'Alumni',
      shortName: 'alumni',
      idNumber: 5,
      subCategoriesIds: [51, 52]),
  'expressions': CategoriesClass(
      name: 'Expressions',
      shortName: 'expressions',
      idNumber: 1,
      subCategoriesIds: [61, 62, 63, 64, 65, 66, 67]),
};

// ------------------- sub-categories -----------------------

class SubCategoriesClass {
  final String name;
  final String shortName;
  final int idNumber;

  SubCategoriesClass(
      {required this.name, required this.shortName, required this.idNumber});
}

Map<String, SubCategoriesClass> campus = {
  'academics': SubCategoriesClass(
      name: 'Academics', shortName: 'academics', idNumber: 11),
  'campusBuzz': SubCategoriesClass(
      name: 'Campus Buzz', shortName: 'campusBuzz', idNumber: 12),
  // 'forum': SubCategoriesClass('Forum', 'forum', 13),
  'studentActivities': SubCategoriesClass(
      name: 'Student Activities', shortName: 'studentActivities', idNumber: 14),
  'halls': SubCategoriesClass(name: 'Halls', shortName: 'halls', idNumber: 15),
  'pollAnalysis': SubCategoriesClass(
      name: 'Poll Analysis', shortName: 'pollAnalysis', idNumber: 16),
  'admissions': SubCategoriesClass(
      name: 'Admissions', shortName: 'admissions', idNumber: 17),
};

Map<String, SubCategoriesClass> connect = {
  'interviews': SubCategoriesClass(
      name: 'Interviews', shortName: 'interviews', idNumber: 21),
  'sacSpeaks': SubCategoriesClass(
      name: 'Sac Speaks', shortName: 'sacSpeaks', idNumber: 22),
  'cgpa': SubCategoriesClass(name: 'CGPA', shortName: 'cgpa', idNumber: 23),
  'guestInterview': SubCategoriesClass(
      name: 'Guest Interview', shortName: 'guestInterview', idNumber: 24),
};

Map<String, SubCategoriesClass> ddcwc = {
  'directorsDesk': SubCategoriesClass(
      name: 'Director\'s Desk', shortName: 'directorsDesk', idNumber: 31),
  'chiefWardensColumn': SubCategoriesClass(
      name: 'Chief Warden\'s Column',
      shortName: 'chiefWardensColumn',
      idNumber: 32),
};

Map<String, SubCategoriesClass> career = {
  'placements': SubCategoriesClass(
      name: 'Placements', shortName: 'placements', idNumber: 41),
  'internships': SubCategoriesClass(
      name: 'Internships', shortName: 'internships', idNumber: 42),
  'higherEducation': SubCategoriesClass(
      name: 'Higher Education', shortName: 'higherEducation', idNumber: 43),
  'guidance':
      SubCategoriesClass(name: 'Guidance', shortName: 'guidance', idNumber: 44),
};

Map<String, SubCategoriesClass> alumni = {
  'alumnusSpeaks': SubCategoriesClass(
      name: 'Alumnus Speaks', shortName: 'alumnusSpeaks', idNumber: 51),
  'alumniAffairs': SubCategoriesClass(
      name: 'Alumni Affairs', shortName: 'alumniAffairs', idNumber: 52),
};

Map<String, Map<String, SubCategoriesClass>> subCategoriesRoutes = {
  'campus': campus,
  'connect': connect,
  'ddcwc': ddcwc,
  'career': career,
  'alumni': alumni
};
