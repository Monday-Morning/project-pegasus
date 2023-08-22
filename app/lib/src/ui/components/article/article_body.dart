import 'package:flutter/material.dart';
import 'package:mondaymorning/src/api/models/content/content.dart';
import 'package:mondaymorning/src/services/themes/size_config.dart';
import 'package:mondaymorning/src/store/constants/media_stores.dart';
import 'package:mondaymorning/src/ui/components/article/article_image_view.dart';
import 'package:mondaymorning/src/ui/components/article/article_table.dart';
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
              return Padding(
                padding: EdgeInsets.symmetric(
                  vertical: SizeConfig.safeBlockVertical! * 2,
                ),
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ArticleImageView(image: '${MediaStores.stores[content[index].media!.store]!}${Uri.encodeFull(content[index].media!.storePath)}')));
                  },
                  child: Container(
                    constraints: BoxConstraints(
                      //maxHeight: SizeConfig.safeBlockVertical! * 80,
                      // Removed Constrains of the image box for new image viewer commit
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
                        return SizedBox(
                          height: SizeConfig.safeBlockVertical! * 30,
                          child: Center(
                            child: CircularProgressIndicator(
                              value: loadingProgress.expectedTotalBytes != null
                                  ? loadingProgress.cumulativeBytesLoaded /
                                      loadingProgress.expectedTotalBytes!
                                  : null,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              );
            case 'ORDERED_LIST':
              return Padding(
                padding: EdgeInsets.symmetric(
                  vertical: SizeConfig.safeBlockVertical! * 2,
                ),
                child: MarkdownText(
                  text: content[index].text,
                ),
              );
            case 'UNORDERED_LIST':
              return Padding(
                padding: EdgeInsets.symmetric(
                  vertical: SizeConfig.safeBlockVertical! * 2,
                ),
                child: MarkdownText(
                  text: content[index].text,
                ),
              );
            case 'QUOTE':
              return Padding(
                padding: EdgeInsets.symmetric(
                  vertical: SizeConfig.safeBlockVertical! * 2,
                ),
                child: Container(
                  margin: EdgeInsets.only(
                    left: SizeConfig.safeBlockHorizontal! * 4,
                  ),
                  padding: EdgeInsets.only(
                    left: SizeConfig.safeBlockHorizontal! * 2,
                  ),
                  decoration: BoxDecoration(
                    color: Theme.of(context).appBarTheme.backgroundColor,
                    border: Border(
                      left: BorderSide(
                        color: Theme.of(context).highlightColor,
                        width: 3.0,
                      ),
                    ),
                  ),
                  child: MarkdownText(
                    text: content[index].text,
                  ),
                ),
              );
            case 'TABLE':
              return Padding(
                padding: EdgeInsets.symmetric(
                  vertical: SizeConfig.safeBlockVertical! * 2,
                  horizontal: SizeConfig.safeBlockHorizontal!,
                ),
                child: ArticleTable(
                  tableBody: content[index].data!.toString(),
                  blockFormatting: content[index].blockFormatting!,
                ),
              );
            default:
              return Padding(
                padding: EdgeInsets.symmetric(
                  vertical: SizeConfig.safeBlockVertical!,
                ),
                child: Text(
                  '-----\n${content[index].contentType}: ${content[index].text}\n-----',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              );
          }
        }, childCount: content.length),
      ),
    );
  }
}
