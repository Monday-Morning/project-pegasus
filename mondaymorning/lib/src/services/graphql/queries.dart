/// A class that contains all the GraphQL Queries.
abstract class Queries {
  /// A query string to fetch listArticles
  static const String listArticles = '''
    query listArticles(){
        listArticles() {
            id
            title
            inshort
            onlyPublished
          }
        }
  ''';
}
