import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:mondaymorning/src/models/issues/article_issue.dart';
import 'package:mondaymorning/src/utils/getStores.dart';
import 'package:mondaymorning/src/utils/limitString.dart';

/// ArticleTile is the card widget displaying an articles preview on home page
class ArticleTile extends StatelessWidget {

  /// Constructor for [ArticleTile]
  final ArticleIssue article;
  final void Function() onTileTap;

  const ArticleTile({
    Key? key,
    required this.article,
    required this.onTileTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTileTap,
      child: Card(
        margin: EdgeInsets.only(bottom: 10, left: 6, right: 6),
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
        color: Theme.of(context).cardTheme.color,
        elevation: 7,
        child: Row(
          children: [
            Container(
              height: 90,
              child: AspectRatio(
                aspectRatio: 108/100,
                child: Container(
                  //constraints: BoxConstraints.expand(width: 104, height: 92),
                  decoration: BoxDecoration(
                    color: Colors.black26,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(6),
                      bottomLeft: Radius.circular(6),
                    ),
                  ),
                  child: Image.network(
                    ImageStore.stores[article.coverMedia.rectangle.store]! + Uri.encodeFull(article.coverMedia.rectangle.storePath),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(width: 11),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 4),
                  Container(
                    height: 14,
                    width: MediaQuery.of(context).size.width*0.2,
                    child: AutoSizeText(
                      'Editorial',
                      style: TextStyle(
                        fontSize: 10,
                        color: Theme.of(context).bottomNavigationBarTheme.unselectedItemColor,
                      ),
                      maxLines: 1,
                    ),
                  ),
                  SizedBox(height: 2),
                  Padding(
                    padding: const EdgeInsets.only(right: 4),
                    child: Container(
                      height: 36,
                      child: AutoSizeText(
                        article.title,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                  SizedBox(height: 9),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width*0.4,
                        height: 16,
                        child: Row(
                          children: [
                            ListView.separated(
                                scrollDirection: Axis.horizontal,
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemBuilder: (context, index){
                                  return AutoSizeText(
                                    limitString(article.authors[index].name),
                                    style: const TextStyle(
                                        fontSize: 12,
                                        color: Color(0xFF6E6E6E)
                                    ),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  );
                                },
                                separatorBuilder: (context, index){
                                  return AutoSizeText(
                                    ', ',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Color(0xFF6E6E6E)
                                    ),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  );
                                },
                                itemCount: article.authors.length
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Icon(
                              Icons.watch_later_outlined,
                              color: Color(0xFF6E6E6E),
                              size: 14,
                            ),
                            Container(
                              height: 16,
                              width: MediaQuery.of(context).size.width*0.1,
                              child: AutoSizeText(
                                ' ${Duration(seconds: article.readTime).inMinutes} min',
                                style: TextStyle(
                                  color: Color(0xFF6E6E6E),
                                  fontSize: 12,
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            SizedBox(width: 12),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 3),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
