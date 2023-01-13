import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mondaymorning/src/services/themes/size_config.dart';
import 'package:mondaymorning/src/store/states/article_page/article_page_data_type.dart';
import 'package:mondaymorning/src/store/states/article_page/article_page_provider.dart';
import 'package:mondaymorning/src/ui/screens/article_screen.dart';
import 'package:mondaymorning/src/ui/screens/full_article_loading_screen.dart';
import 'package:mondaymorning/src/ui/screens/full_error_screen.dart';
import 'package:mondaymorning/src/ui/screens/full_loading_screen.dart';

class ArticlePage extends ConsumerWidget {
  final String articleId;

  const ArticlePage({super.key, required this.articleId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    SizeConfig().init(context);
    return FutureBuilder<ArticlePageData>(
      future: ref.read(articlePageDataProvider(articleId: articleId).future),
      initialData: null,
      builder: (BuildContext context, AsyncSnapshot<ArticlePageData> snapshot) {
        if (snapshot.connectionState != ConnectionState.done) {
          return ArticleShimmerLoadingScreen();
        }
        if (snapshot.hasError || !snapshot.hasData) {
          if (kDebugMode) {
            print(snapshot.error);
          }
          return FullErrorScreen();
        }
        if (kDebugMode) {
          print(snapshot.data);
        }
        return ArticleScreen(article: snapshot.data!.article);
      },
    );
  }
}
