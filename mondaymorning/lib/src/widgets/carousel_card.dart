import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:mondaymorning/src/models/issues/article_issue.dart';
import 'package:mondaymorning/src/utils/getStores.dart';
import 'package:mondaymorning/src/utils/limitString.dart';

/// Carousel Card Widget
class CarouselCard extends StatelessWidget {
  /// Constructor for [CarouselCard]
  final ArticleIssue article;
  final void Function() onTileTap;

  const CarouselCard({
    Key? key,
    required this.article,
    required this.onTileTap,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: GestureDetector(
          onTap: onTileTap,
          child: Card(
            margin: EdgeInsets.only(left: 6, right: 6),
            clipBehavior: Clip.antiAlias,
            elevation: 7,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            child: Stack(
              children: [
                AspectRatio(
                  aspectRatio: 16/9,
                  child: Image(
                    image: NetworkImage(
                      ImageStore.stores[article.coverMedia.rectangle.store]! + Uri.encodeFull(article.coverMedia.rectangle.storePath),
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFF222222).withOpacity(0.5),
                        Color(0xFF222222).withOpacity(1.0),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 9, right: 9, bottom: 8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        article.title,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 9),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 200,
                            height: 15,
                            child: Row(
                              children: [
                                ListView.separated(
                                    scrollDirection: Axis.horizontal,
                                    shrinkWrap: true,
                                    physics: const NeverScrollableScrollPhysics(),
                                    itemBuilder: (context, index){
                                      return Text(
                                        limitString(article.authors[index].name),
                                        style: const TextStyle(
                                            fontSize: 12,
                                            color: Color(0xFF6E6E6E)
                                        ),
                                      );
                                    },
                                    separatorBuilder: (context, index){
                                      return Text(
                                        ', ',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Color(0xFF6E6E6E)
                                        ),
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
                                  color: Color(0xFFC4C4C4),
                                  size: 14,
                                ),
                                Text(
                                  ' ${Duration(seconds: 120).inMinutes} min',
                                  style: TextStyle(
                                    color: Color(0xFFC4C4C4),
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
