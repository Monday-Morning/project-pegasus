import 'package:mondaymorning/src/api/repositories/article/article_repository_provider.dart';
import 'package:mondaymorning/src/store/states/category_page/category_page_data_type.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'category_page_provider.g.dart';

@riverpod
Future<CategoryPageData> categoryPageData(CategoryPageDataRef ref,
    {required List<int> categoryId, required int limit}) async {
  return CategoryPageData(
    articles: await ref
        .read(articleRepositoryProvider)
        .getArticlesByCategory(categoryId: categoryId, limit: limit),
  );
}