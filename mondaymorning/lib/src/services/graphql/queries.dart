abstract class Queries {
  static const String LIST_ARTICLES = '''
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
