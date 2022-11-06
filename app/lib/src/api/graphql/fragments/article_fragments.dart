class ArticleFragments {
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

  static const media = '''
    media {
      store
      storePath
      mediaType
      blurhash
      authors {
        name
        details
      }
    }
  ''';

  static const content = '''
    content {
      text
      data
      mediaID
      contentType
      blockFormatting {
        align
        hasHeaderRow
        hasHeaderColumn
        listStyle
      }
      $media
    }
  ''';

  static const completeArticleData = '''
    id
    articleType
    title
    inshort
    authors {
      name
      details
      user {
        picture{
          store
          storePath
          blurhash
        }
      }
    }
    photographers {
      name
      details
    }
    designers {
      name
      details
    }
    tech {
      name
      details
    }
    categories {
      number
      isSubcategory
      reference
    }
    tags {
      name
      reference
    }
    $content
    $coverMedia
    reactions
    comments
    bookmarks
    views
    hits
    readTime
    timeSpent
    createdAt
    updatedAt
  ''';
}
