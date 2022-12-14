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
        surfaceTintColor: Theme.of(context).cardTheme.color,
        margin: EdgeInsets.symmetric(
            horizontal: SizeConfig.safeBlockHorizontal! * 1.5,
            vertical: SizeConfig.safeBlockVertical! * 0.5,),
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
              Theme.of(context).extension<REMSpace>()!.get(1)),
        ),
        elevation: 2,
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
                        '${MediaStores.stores[article.coverMedia.rectangle!.store]!}${Uri.encodeFull(article.coverMedia.rectangle!.storePath)}',
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
                      style: Theme.of(context).textTheme.subtitle1,
                      maxLines: 1,
                    ),
                  ),
                  SizedBox(
                    height: SizeConfig.safeBlockVertical! * 5,
                    child: Text(
                      article.title,
                      style: Theme.of(context).textTheme.headline3,
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
                            SizedBox(
                              width: SizeConfig.safeBlockHorizontal! * 40,
                              child: ListView.separated(
                                scrollDirection: Axis.horizontal,
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemBuilder: (context, index) {
                                  return Text(
                                    AppUtils.limitAuthor(
                                        article.authors[index].name),
                                    style: Theme.of(context).textTheme.caption,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  );
                                },
                                separatorBuilder: (context, index) {
                                  return Text(
                                    ', ',
                                    style: Theme.of(context).textTheme.caption,
                                  );
                                },
                                itemCount: article.authors.length,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.watch_later_outlined,
                            color: Colors.grey[500],
                            size: 12,
                          ),
                          SizedBox(
                            height: SizeConfig.safeBlockVertical! * 1.5,
                            width: SizeConfig.safeBlockHorizontal! * 10,
                            child: Text(
                              ' ${Duration(seconds: article.readTime).inMinutes} min',
                              style: Theme.of(context).textTheme.caption,
                            ),
                          ),
                          SizedBox(width: SizeConfig.safeBlockHorizontal! * 2),
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
