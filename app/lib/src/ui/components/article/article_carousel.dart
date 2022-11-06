import 'package:auto_route/auto_route.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:mondaymorning/src/api/models/article/article.dart';
import 'package:mondaymorning/src/services/themes/size_config.dart';
import 'package:mondaymorning/src/ui/components/article/big_article_card.dart';
import 'package:mondaymorning/src/services/router/mm_router.gr.dart';

class ArticleCarousel extends HookWidget {
  final List<Article> featured;

  const ArticleCarousel({Key? key, required this.featured}) : super(key: key);

  Iterable<int> get positiveIntegers sync* {
    int i = 0;
    while (true) {
      yield i++;
    }
  }

  @override
  Widget build(BuildContext context) {
    final currentIndex = useState(0);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CarouselSlider(
          options: CarouselOptions(
            aspectRatio: 16 / 9,
            // enlargeCenterPage: true,
            pauseAutoPlayOnManualNavigate: true,
            viewportFraction: 1,
            initialPage: 0,
            enableInfiniteScroll: true,
            // autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            scrollDirection: Axis.horizontal,
            onPageChanged: (index, reason) {
              currentIndex.value = index;
            },
          ),
          items: positiveIntegers.take(featured.length).toList().map((i) {
            return Builder(
              builder: (BuildContext context) {
                return BigArticleCard(
                  article: featured[i],
                  onTileTap: () {
                    AutoRouter.of(context).push(
                      ArticleRoute(articleId: featured[i].id),
                    );
                  },
                );
              },
            );
          }).toList(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: featured.map((url) {
            int index = featured.indexOf(url);
            return Container(
              width: SizeConfig.safeBlockVertical! * 0.5,
              height: SizeConfig.safeBlockVertical! * 0.5,
              margin: EdgeInsets.symmetric(
                vertical: SizeConfig.safeBlockVertical! * 0.5,
                horizontal: SizeConfig.safeBlockHorizontal! * 0.5,
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: currentIndex.value == index
                    ? Colors.white
                    : Colors.white.withOpacity(0.4),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
