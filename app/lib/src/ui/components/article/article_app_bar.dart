import 'package:flutter/material.dart';
import 'package:mondaymorning/src/api/models/article/cover_media.dart';
import 'package:mondaymorning/src/services/themes/size_config.dart';
import 'package:mondaymorning/src/store/constants/media_stores.dart';

class ArticleAppBar extends StatelessWidget {
  const ArticleAppBar({
    Key? key,
    required this.coverMedia,
  }) : super(key: key);

  final CoverMedia coverMedia;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      primary: true,
      expandedHeight: SizeConfig.safeBlockVertical! * 25,
      flexibleSpace: FlexibleSpaceBar(
        background: Image.network(
          '${MediaStores.stores[coverMedia.rectangle!.store]!}${Uri.encodeFull(coverMedia.rectangle!.storePath)}',
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
