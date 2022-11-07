import 'package:flutter/material.dart';
import 'package:mondaymorning/src/api/models/article/article.dart';
import 'package:mondaymorning/src/services/app_utils.dart';
import 'package:mondaymorning/src/services/themes/rem_space.dart';
import 'package:mondaymorning/src/services/themes/size_config.dart';
import 'package:mondaymorning/src/store/constants/media_stores.dart';

class BigArticleCard extends StatelessWidget {
  final Article article;
  final void Function() onTileTap;

  const BigArticleCard({
    Key? key,
    required this.article,
    required this.onTileTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: GestureDetector(
        onTap: onTileTap,
        child: Card(
          margin: EdgeInsets.only(
            bottom: SizeConfig.safeBlockVertical! * 2,
            left: SizeConfig.safeBlockHorizontal! * 2,
            right: SizeConfig.safeBlockHorizontal! * 2,
          ),
          clipBehavior: Clip.antiAlias,
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
                Theme.of(context).extension<REMSpace>()!.get(1)),
          ),
          child: AspectRatio(
            aspectRatio: 16 / 9,
            child: Stack(
              alignment: Alignment.center,
              fit: StackFit.expand,
              children: [
                AspectRatio(
                  aspectRatio: 16 / 9,
                  child: Image(
                    image: NetworkImage(
                      '${MediaStores.stores[article.coverMedia.rectangle!.store]!}${Uri.encodeFull(article.coverMedia.rectangle!.storePath)}',
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
                AspectRatio(
                  aspectRatio: 16 / 9,
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFF222222).withOpacity(0.0),
                          Color(0xFF222222).withOpacity(0.5),
                          Color(0xFF222222).withOpacity(1.0),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: [0.4, 0.7, 1.0],
                      ),
                    ),
                  ),
                ),
                // TODO: Use themeConfig for texts instead of hard-coded values
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.safeBlockHorizontal! * 2,
                    vertical: SizeConfig.safeBlockVertical! * 2,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
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
                      SizedBox(height: SizeConfig.safeBlockHorizontal! * 2),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: SizeConfig.safeBlockVertical! * 2.5,
                            child: Row(
                              children: [
                                ListView.separated(
                                    scrollDirection: Axis.horizontal,
                                    shrinkWrap: true,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    itemBuilder: (context, index) {
                                      return Text(
                                        AppUtils.limitAuthor(
                                            article.authors[index].name),
                                        style: const TextStyle(
                                          fontSize: 14,
                                          color: Color.fromARGB(
                                              255, 200, 200, 200),
                                        ),
                                      );
                                    },
                                    separatorBuilder: (context, index) {
                                      return Text(
                                        ', ',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Color.fromARGB(
                                              255, 200, 200, 200),
                                        ),
                                      );
                                    },
                                    itemCount: article.authors.length),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: SizeConfig.safeBlockVertical! * 2.5,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.watch_later_outlined,
                                  color: Color(0xFFC4C4C4),
                                  size: 12,
                                ),
                                Text(
                                  ' ${Duration(seconds: 120).inMinutes} min',
                                  style: TextStyle(
                                    color: Color(0xFFC4C4C4),
                                    fontSize: 14,
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
