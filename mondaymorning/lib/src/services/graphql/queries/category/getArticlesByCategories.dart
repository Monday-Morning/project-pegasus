
class getArticlesByCategoriesQuery{
  static const coverMedia = '''
    coverMedia {
        square {
          store
          storePath
          mediaType
          blurhash
        }
        rectangle {
          store
          storePath
          mediaType
          blurhash
        }
      }
  ''';

  static const basicArticleData = '''
      id
      articleType
      title
      inshort
      readTime
      authors {
        name
        details
      }
      categories {
        number
        isSubcategory
      }
      $coverMedia
  ''';

  static const getArticlesByCategories = '''
    query getArticlesByCategories(
    \$categoryNumbers: [Int]!
    \$limit: Int
    \$offset: Int
  ) {
    getArticlesByCategories(
      categoryNumbers: \$categoryNumbers
      limit: \$limit
      offset: \$offset
    ) {
      $basicArticleData
    }
  }
  ''';
}