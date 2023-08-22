import 'package:flutter/material.dart';
import 'package:moment_dart/moment_dart.dart';
import 'package:mondaymorning/src/api/models/article/article_category.dart';
import 'package:mondaymorning/src/api/models/user/user_detail.dart';
import 'package:mondaymorning/src/services/app_utils.dart';
import 'package:mondaymorning/src/services/themes/size_config.dart';
import 'package:mondaymorning/src/store/constants/categories.dart';

class ArticleHeader extends StatelessWidget {
  const ArticleHeader({
    Key? key,
    required this.title,
    required this.categories,
    required this.authors,
    required this.readTime,
    required this.createdAt,
  }) : super(key: key);

  final String title;
  final List<ArticleCategory>? categories;
  final List<UserDetail> authors;
  final int readTime;
  final DateTime createdAt;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.symmetric(
        horizontal: SizeConfig.safeBlockHorizontal! * 5,
        vertical: SizeConfig.safeBlockVertical! * 2,
      ),
      sliver: SliverList(
        delegate: SliverChildListDelegate([
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: SizeConfig.safeBlockVertical! * 0,
            ),
            child: Text(
              categories
                      ?.map((e) =>
                          Categories.allCategoryNames[e.number]!.toUpperCase())
                      .join(' | ') ??
                  '',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: SizeConfig.safeBlockVertical! * 1,
            ),
            child: Text(
              title,
              style: Theme.of(context).textTheme.displayMedium,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: SizeConfig.safeBlockVertical! * 1,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  Moment(createdAt).format('MMMM DD, YYYY'),
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.watch_later_outlined,
                      color: Theme.of(context).textTheme.bodyMedium!.color,
                      size: Theme.of(context).textTheme.bodyMedium!.fontSize,
                    ),
                    SizedBox(
                      width: SizeConfig.safeBlockHorizontal! * 1,
                    ),
                    Text(
                      '${Duration(seconds: readTime).inMinutes} min',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: SizeConfig.safeBlockVertical! * 1,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  authors.map((e) => AppUtils.limitAuthor(e.name)).join(', '),
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ),
          Divider(
            thickness: 1,
          ),
        ]),
      ),
    );
  }
}
