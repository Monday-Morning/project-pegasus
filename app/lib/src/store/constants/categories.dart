class Categories {
  // TODO: refactor for granular access

  static final Map<String, int> categoryIds = {
    'campus': 1,
    'connect': 2,
    'ddcwc': 3,
    'career': 4,
    'alumni': 5,
    'expressions': 6,
  };

  static final Map<int, String> categoryNames = {
    1: 'campus',
    2: 'connect',
    3: 'ddcwc',
    4: 'career',
    5: 'alumni',
    6: 'expressions',
  };

  static final Map<String, List<int>> subCategoryIdsByCategory = {
    'campus': [11, 12, 13, 14, 15, 16, 17],
    'connect': [21, 22, 23, 24],
    'ddcwc': [31, 32],
    'career': [41, 42, 43, 44, 45],
    'alumni': [51, 52],
    'expressions': [61, 62, 63, 64, 65, 66, 67],
  };

  static final Map<int, String> allCategoryNames = {
    -1: '......',

    // Campus
    1: 'Campus',
    11: 'Academics',
    12: 'Campus Buzz',
    13: 'Forum',
    14: 'Student Activities',
    15: 'Halls',
    16: 'Poll Analysis',
    17: 'Admission',

    // Campus => Academics => Department
    1101: 'Biotechnology and Biomedical',
    1102: 'Civil',
    1103: 'Chemical',
    1104: 'Ceramic',
    1105: 'Computer Science',
    1106: 'Electrical',
    1107: 'Electronics and Communication',
    1108: 'Earth and Atmospheric',
    1109: 'Food Process',
    1110: 'Life Science',
    1111: 'Mathematics',
    1112: 'Humanities and Social Sciences',
    1113: 'Industrial Design',
    1114: 'Mechanical',
    1115: 'Metallurgical and Materials',
    1116: 'Mining',
    1117: 'Planning and Architecture',
    1118: 'Physics and Astronomy',
    1119: 'School of Management',
    1120: 'Chemistry',

    // Connect
    2: 'Connect',
    21: 'Interviews',
    22: 'SAC Speaks',
    23: 'CGPA',
    24: 'Guest Interview',

    // DD & CWC
    3: 'DD & CWC',
    31: "Director's Desk",
    32: "Chief Warden's Desk",

    // Career
    4: 'Career',
    41: 'Placements',
    42: 'Internships',
    43: 'Higher Eduction',
    44: 'Live',
    45: 'Guidance',

    // Alumni
    5: 'Alumni',
    51: 'Alumni Speaks',
    52: 'Alumni Affairs',

    // Expressions
    6: 'Expressions',
    61: 'Witsdom',
    62: 'Photostory',
    63: 'Gallery',
    64: 'NITR in Motion',
    65: 'Podcasts',
    66: 'Editorial',
    67: 'Miscellaneous',

    // Expressions => Editorial => Type
    661: 'Opinion',
    662: 'Science',
    663: 'Society',
  };
}
