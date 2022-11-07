import 'package:flutter/material.dart';
import 'package:mondaymorning/src/api/models/article/article.dart';
import 'package:mondaymorning/src/ui/components/article/article_app_bar.dart';
import 'package:mondaymorning/src/ui/components/article/article_body.dart';
import 'package:mondaymorning/src/ui/components/article/article_disclaimer.dart';
import 'package:mondaymorning/src/ui/components/article/article_header.dart';

class ArticleScreen extends StatelessWidget {
  final Article article;

  const ArticleScreen({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        shrinkWrap: true,
        slivers: [
          ArticleAppBar(coverMedia: article.coverMedia),
          ArticleHeader(
            title: article.title,
            categories: article.categories,
            authors: article.authors,
            readTime: article.readTime,
            createdAt: article.createdAt!,
          ),
          ArticleBody(content: article.content ?? []),
          ArticleDisclaimer(),
        ],
      ),
    );
  }
}
