
class getLastestIssueQuery{
  static const getLastestIssue = '''
    query getLatestIssues(\$limit: Int!, \$onlyPublished: Boolean!) {
  getLatestIssues(limit: \$limit, onlyPublished: \$onlyPublished) {
    id
    featured {
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
    }
    articles {
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
      coverMedia {
        square {
          store
          storePath
          blurhash
          mediaType
        }
        rectangle {
          store
          storePath
          mediaType
          blurhash
        }
      }
    }
  }
}
''';
}