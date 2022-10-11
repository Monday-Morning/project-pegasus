import 'package:flutter/material.dart';

class CategoriesClass{
  String name;
  String shortName;
  int idNumber;
  List<int> subCategoriesIds;

  CategoriesClass(@required this.name, @required this.shortName, @required this.idNumber,@required this.subCategoriesIds);
}

// ------------------- categories ----------------------------

List<CategoriesClass> categoriesRoutes = [
  CategoriesClass('Campus','campus',1,[11, 12, 13, 14, 15, 16, 17]),
  CategoriesClass('Connect','connect',2,[21, 22, 23, 24]),
  CategoriesClass('DD & CWC','ddcwc',3,[31, 32]),
  CategoriesClass('Career','career',4,[41, 42, 43, 44]),
  CategoriesClass('Alumni','alumni',5,[51, 52]),
  CategoriesClass('Expressions','expressions',1,[61, 62, 63, 64, 65, 66, 67]),
];

// ------------------- sub-categories -----------------------

class SubCategoriesClass{
  String name;
  String shortName;
  int idNumber;

  SubCategoriesClass(@required this.name, @required this.shortName, @required this.idNumber);
}

List<SubCategoriesClass> campus = [
  SubCategoriesClass('Academics','academics',11),
  SubCategoriesClass('Campus Buzz','campusBuzz',12),
  SubCategoriesClass('Forum','forum',13),
  SubCategoriesClass('Student Activities','studentActivities',14),
  SubCategoriesClass('Halls','halls',15),
  SubCategoriesClass('Poll Analysis','pollAnalysis',16),
  SubCategoriesClass('Admissions','admissions',17),
];

List<SubCategoriesClass> connect = [
  SubCategoriesClass('Interviews','interviews',21),
  SubCategoriesClass('Sac Speaks','sacSpeaks',22),
  SubCategoriesClass('CGPA','cgpa',23),
  SubCategoriesClass('Guest Interview','guestInterview',24),
];

List<SubCategoriesClass> ddcwc = [
  SubCategoriesClass('Director\'s Desk','directorsDesk',31),
  SubCategoriesClass('Chief Warden\'s Column','chiefWardensColumn',32),
];

List<SubCategoriesClass> career = [
  SubCategoriesClass('Placements','placements',41),
  SubCategoriesClass('Internships','internships',42),
  SubCategoriesClass('Higher Education','higherEducation',43),
  SubCategoriesClass('Guidance','guidance',44),
];

List<SubCategoriesClass> alumni = [
  SubCategoriesClass('Alumnus Speaks','alumnusSpeaks',51),
  SubCategoriesClass('Alumni Affairs','alumniAffairs',52),
  SubCategoriesClass('Higher Education','higherEducation',53),
  SubCategoriesClass('Guidance','guidance',54),
];

Map<String, List<SubCategoriesClass>> subCategoriesRoutes = {
  'campus' : campus,
  'connect' : connect,
  'ddcwc': ddcwc,
  'career': career,
  'alumni': alumni
};