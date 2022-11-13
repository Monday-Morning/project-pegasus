class SquiggleQueries {
  static const String getLatestSquiggle = '''
    query getLatestSquiggle {
      getLatestSquiggle {
        id
        content
      }
    }
  ''';
}
