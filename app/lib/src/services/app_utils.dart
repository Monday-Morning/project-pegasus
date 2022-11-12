class AppUtils {
  static String limitAuthor(String author) {
    if (author == 'Team MM') return author;
    List<String> authorName = author.split(' ');

    String finalName = authorName
        .sublist(0, ((authorName.length / 2).round()))
        .reduce((value, element) => '$value $element');
    return finalName;
  }

  static String limitString(String str, {int limit = 30}) {
    if (str.length > limit) {
      return '${str.substring(0, limit)}...';
    }
    return str;
  }
}
