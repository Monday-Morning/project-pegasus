/// A class that contains all the GraphQL Queries.
abstract class Queries {
  /// A query string to fetch listArticles
  static const String listArticles = r'''
    query listArticles($onlyPublished : Boolean!){
        listArticles(onlyPublished: $onlyPublished) {
            id
            title
            inshort
          }
        }
  ''';
}
