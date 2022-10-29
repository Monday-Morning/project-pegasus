import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mondaymorning/src/providers/providers.dart';
import 'package:mondaymorning/src/services/navigation/router.gr.dart';
import 'package:mondaymorning/src/widgets/article_carousel.dart';
import 'package:mondaymorning/src/widgets/article_tile.dart';
import 'package:mondaymorning/src/widgets/custom_icon_button.dart';

/// HomePage : Overview of articles containing carousel cards Article Overview Tiles and 2 Menu Buttons
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ImageIcon(
              AssetImage("assets/images/mmlogo.png"),
              color: Theme.of(context).appBarTheme.foregroundColor,
              size: 30,
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              width: 170,
              child: AutoSizeText(
                'Monday Morning',
                style: GoogleFonts.ibmPlexSans(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
                maxLines: 1,
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.156,
            ),
          ],
        ),
        centerTitle: true,
        leading: const AutoBackButton(),
      ),
      body: Consumer(
        builder: (context, ref, child){
          final latestIssue = ref.watch(latestIssueNotifierProvider);
          return latestIssue.when(
                  () => const Center(
                    child: Text('No Articles Available'),
                  ),
              loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
              success: (latestIssue) => Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  child: ScrollConfiguration(
                    behavior: MyBehavior(),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          ArticleCarousel(featured: latestIssue.featured),

                          SizedBox(height: 13),

                          for (int i = 0; i < latestIssue.articles.length; i++)
                            ArticleTile(
                              article: latestIssue.articles[i],
                              onTileTap: () {
                                context.router.push(
                                  FullRouteArticle(postId: 1),
                                );
                              },
                            ),
                          SizedBox(height: 2),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.only(left: 6, right: 5),
                                  child: CustomIconButton(
                                    icon: Icons.calendar_today_outlined,
                                    text: 'Upcoming Events',
                                    onButtonTap: () {
                                      context.router.push(
                                        ComingSoonRoute(),
                                      );
                                    },
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.only(right: 6, left: 5),
                                  child: CustomIconButton(
                                    icon: Icons.pie_chart_outline,
                                    text: 'Ongoing Poll',
                                    onButtonTap: () {
                                      context.router.push(
                                        ComingSoonRoute(),
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              error:(error) => Center(
                child: Text(error),
              ),
          );
        },
      ),
    );
  }
}



class MyBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}
