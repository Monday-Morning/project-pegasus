import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mondaymorning/src/providers/providers.dart';

/// Displays a list of all articles.
class ArticlesView extends StatelessWidget {
  /// Constructor for ArticleView.
  const ArticlesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer(
        builder: (context, ref, child) {
          final listArticles = ref.watch(listArticlesNotifierProvider);
          return listArticles.when(
                () => const Center(
              child: Text('No Articles Available'),
            ),
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
            success: (articles) => ListView.builder(
              itemCount: articles.length,
              itemBuilder: (context, index) => ListTile(
                title: Text(articles[index].title),
              ),
            ),
            error: (error) => Center(
              child: Text(error),
            ),
          );
        },
      ),
    );
  }
}
