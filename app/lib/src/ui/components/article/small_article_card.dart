import 'package:flutter/material.dart';
import 'package:mondaymorning/src/api/models/article/article.dart';
import 'package:mondaymorning/src/services/app_utils.dart';
import 'package:mondaymorning/src/services/themes/rem_space.dart';
import 'package:mondaymorning/src/services/themes/size_config.dart';
import 'package:mondaymorning/src/store/constants/media_stores.dart';

/// ArticleTile is the card widget displaying an articles preview on home page
class SmallArticleCard extends StatelessWidget {
  /// Constructor for [SmallArticleCard]
  final Article article;
  final void Function() onTileTap;

  const SmallArticleCard({
    Key? key,
    required this.article,
    required this.onTileTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTileTap,
      child: Card(
        margin: EdgeInsets.only(
            left: SizeConfig.safeBlockHorizontal!,
            right: SizeConfig.safeBlockHorizontal!),
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
              Theme.of(context).extension<REMSpace>()!.get(1)),
        ),
        color: Theme.of(context).cardTheme.color,
        elevation: 7,
        child: Row(
          children: [
            SizedBox(
              height: SizeConfig.safeBlockVertical! * 11,
              child: AspectRatio(
                aspectRatio: 108 / 100,
                child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black26,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(
                            Theme.of(context).extension<REMSpace>()!.get(1)),
                        bottomLeft: Radius.circular(
                            Theme.of(context).extension<REMSpace>()!.get(1)),
                      ),
                    ),
                    child: Image(
                      image: NetworkImage(
                        MediaStores
                                .stores[article.coverMedia.rectangle!.store]! +
                            Uri.encodeFull(
                                article.coverMedia.rectangle!.storePath),
                      ),
                      fit: BoxFit.cover,
                    )),
              ),
            ),
            SizedBox(width: SizeConfig.safeBlockHorizontal! * 3),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: SizeConfig.safeBlockVertical! * 0.3),
                  SizedBox(
                    height: SizeConfig.safeBlockVertical! * 2,
                    width: SizeConfig.safeBlockHorizontal! * 10,
                    child: Text(
                      'Editorial',
                      style: TextStyle(
                        fontSize: 10,
                        color: Theme.of(context)
                            .bottomNavigationBarTheme
                            .unselectedItemColor,
                      ),
                      maxLines: 1,
                    ),
                  ),
                  SizedBox(
                    height: SizeConfig.safeBlockVertical! * 5,
                    child: Text(
                      article.title,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(height: SizeConfig.safeBlockVertical! * 0.5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: SizeConfig.safeBlockHorizontal! * 40,
                        height: SizeConfig.safeBlockVertical! * 2,
                        child: Row(
                          children: [
                            ListView.separated(
                                scrollDirection: Axis.horizontal,
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemBuilder: (context, index) {
                                  return Text(
                                    AppUtils.limitAuthor(
                                        article.authors[index].name),
                                    style: const TextStyle(
                                        fontSize: 12, color: Color(0xFF6E6E6E)),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  );
                                },
                                separatorBuilder: (context, index) {
                                  return Text(
                                    ', ',
                                    style: TextStyle(
                                        fontSize: 12, color: Color(0xFF6E6E6E)),
                                  );
                                },
                                itemCount: article.authors.length),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.watch_later_outlined,
                            color: Color(0xFF6E6E6E),
                            size: 14,
                          ),
                          SizedBox(
                            height: SizeConfig.safeBlockVertical! * 2,
                            width: SizeConfig.safeBlockHorizontal! * 10,
                            child: Text(
                              ' ${Duration(seconds: article.readTime).inMinutes} min',
                              style: TextStyle(
                                color: Color(0xFF6E6E6E),
                                fontSize: 12,
                              ),
                            ),
                          ),
                          SizedBox(width: 12),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: SizeConfig.safeBlockVertical! * 0.5),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
