import 'package:flutter/material.dart';
import 'package:mondaymorning/src/api/models/content/content.dart';
import 'package:mondaymorning/src/services/themes/size_config.dart';
import 'package:mondaymorning/src/store/constants/media_stores.dart';
import 'package:mondaymorning/src/ui/components/article/markdown_text.dart';

class ArticleBody extends StatelessWidget {
  final List<Content> content;

  const ArticleBody({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.symmetric(
        horizontal: SizeConfig.safeBlockHorizontal! * 5,
      ),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
          switch (content[index].contentType) {
            case 'PARAGRAPH':
              return Padding(
                padding: EdgeInsets.symmetric(
                  vertical: SizeConfig.safeBlockVertical! * 0.5,
                ),
                child: MarkdownText(text: content[index].text),
              );
            case 'H1':
              return Padding(
                padding: EdgeInsets.only(
                  top: SizeConfig.safeBlockVertical! * 4,
                  bottom: SizeConfig.safeBlockVertical! * 0.5,
                ),
                child: MarkdownText(text: '# ${content[index].text}'),
              );
            case 'H2':
              return Padding(
                padding: EdgeInsets.only(
                  top: SizeConfig.safeBlockVertical! * 1,
                  bottom: SizeConfig.safeBlockVertical! * 0.5,
                ),
                child: MarkdownText(text: '## ${content[index].text}'),
              );
            case 'H3':
              return Padding(
                padding: EdgeInsets.only(
                  top: SizeConfig.safeBlockVertical! * 0.5,
                ),
                child: MarkdownText(text: '### ${content[index].text}'),
              );
            case 'IMAGE':
              // TODO: add feature to show fullscreen on click with zoom facility etc
              return Padding(
                padding: EdgeInsets.symmetric(
                  vertical: SizeConfig.safeBlockVertical! * 2,
                ),
                child: Container(
                  constraints: BoxConstraints(
                    maxHeight: SizeConfig.safeBlockVertical! * 80,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      SizeConfig.safeBlockHorizontal! * 2,
                    ),
                  ),
                  clipBehavior: Clip.antiAlias,
                  child: Image.network(
                    '${MediaStores.stores[content[index].media!.store]!}${Uri.encodeFull(content[index].media!.storePath)}',
                    fit: BoxFit.contain,
                    alignment: Alignment.center,
                    loadingBuilder: (context, child, loadingProgress) {
                      if (loadingProgress == null) {
                        return child;
                      }
                      return Center(
                        child: CircularProgressIndicator(
                          value: loadingProgress.expectedTotalBytes != null
                              ? loadingProgress.cumulativeBytesLoaded /
                                  loadingProgress.expectedTotalBytes!
                              : null,
                        ),
                      );
                    },
                  ),
                ),
              );
            case 'QUOTE':
              // TODO: add correct design for quote
              return Padding(
                padding: EdgeInsets.symmetric(
                  vertical: SizeConfig.safeBlockVertical! * 2,
                ),
                child: MarkdownText(text: '> ${content[index].text}'),
              );
            default:
              return Padding(
                padding: EdgeInsets.symmetric(
                  vertical: SizeConfig.safeBlockVertical!,
                ),
                child: Text(
                  '-----\n${content[index].contentType}: ${content[index].text}\n-----',
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              );
          }
        }, childCount: content.length),
      ),
    );
  }
}
