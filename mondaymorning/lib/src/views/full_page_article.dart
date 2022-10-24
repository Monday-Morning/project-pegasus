import 'package:auto_route/annotations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mondaymorning/src/models/article/article.dart';
import 'package:mondaymorning/src/models/article/content.dart';
import 'package:mondaymorning/src/providers/mockdata/mock_data.dart';
import 'package:collection/collection.dart';
import 'package:mondaymorning/src/services/graphql/graphql_service.dart';
import 'package:mondaymorning/src/services/graphql/queries/articles/getArticleById.dart';
import 'package:mondaymorning/src/utils/category_number.dart';
import 'package:mondaymorning/src/utils/dummy/single_article.dart';
import 'package:mondaymorning/src/utils/getStores.dart';
import 'package:mondaymorning/src/utils/limitString.dart';
import 'package:mondaymorning/src/widgets/fullpagearticle/heading2.dart';
import 'package:mondaymorning/src/widgets/fullpagearticle/image_box.dart';
import 'package:mondaymorning/src/widgets/fullpagearticle/quote_box.dart';
import 'package:mondaymorning/src/widgets/fullpagearticle/tag.dart';

/// FullPageArticle : has the full page article view with all the article components
class FullPageArticle extends StatefulWidget {
  final int postId;

  const FullPageArticle({
    Key? key,
    @PathParam() required this.postId,
  }) : super(key: key);

  @override
  _FullPageArticleState createState() =>
      _FullPageArticleState(postId: this.postId);
}

Map<String, int> CONTENT_TYPE = {
'H1': 0,
'H2': 1,
'H3': 2,
'PARAGRAPH': 3,
'IMAGE' : 4,
'QUOTE' : 5,
'ORDERED_LIST': 6,
'UNORDERED_LIST': 7,
'TABLE': 8,
'BAR_GRAPH': 9,
'COLUMN_GRAPH': 10,
'LINE_CHART' : 11,
'PIE_CHART': 12,
'HORIZONTAL_LINE': 13,
};

class _FullPageArticleState extends State<FullPageArticle> {
  int postId;
  _FullPageArticleState({required this.postId});

  final String id = "629dbd541acb2c3831ab475d";

  final Article dummyArticle = SingleArticleDummy.article;

  @override
  void initState() {
    getArticles();
  }

  Future<void> getArticles() async {
    try {
      final result = await GraphQLService().query(query: QueryOptions(
        document: gql(getArticleByIdQueries.getArticleById),
        variables: {
          'id' : id,
        },
      ),
      );


      final articles = result.data;

      // final featured = <ArticleIssue>[];
      // final latest = <ArticleIssue>[];
      //
      // final latestIssue = LatestIssue(
      //   id: articles!['getLatestIssues']['id'] as String,
      //   featured: articles['getLatestIssues']['featured'] as List<ArticleIssue>,
      //   articles: articles['getLatestIssues']['articles'] as List<ArticleIssue>
      // );

      print(articles);

      // for (final element in articles) {
      //   articleList.add(
      //     MMArticle(
      //       id: element['id'] as String,
      //       title: element['title'] as String,
      //       imageUrl: element['coverMedia']['rectangle']['storePath'] as String,
      //     ),
      //   );
      // }

      return;
    } catch (e) {
      rethrow;
    }
  }

  Widget renderContent(Content content){

    String contentType = content.contentType;
    String text = content.text;

    switch(CONTENT_TYPE[contentType]){
      case 0:
        return Container(
          margin: EdgeInsets.only(top: 8.0),
          child: Markdown(
              data: text,
              styleSheet: MarkdownStyleSheet(
                h1: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),
          ),
        );
      case 1:
        return Container(
          margin: EdgeInsets.only(top: 8.0),
          child: Markdown(
            data: text,
            styleSheet: MarkdownStyleSheet(
              h2: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        );
      case 2:
        return Container(
          margin: EdgeInsets.only(top: 8.0),
          child: Markdown(
            data: text,
            styleSheet: MarkdownStyleSheet(
              h3: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        );
      case 3:
        return Container(
          margin: EdgeInsets.symmetric(vertical: 16),
          child: Markdown(
            data: text,
          ),
        );
      case 4:
        return Container(
          margin: EdgeInsets.symmetric(vertical: 25.0),
          child: Expanded(
            child: Image.network(ImageStore.stores[content.media?.store]! + Uri.encodeFull(content.media!.storePath)),
          ),
        );
      case 5:
        return Container(
          margin: EdgeInsets.only(left: 2, top: 25.0, bottom: 25.0),
          child: Markdown(
            data: text,
            styleSheet: MarkdownStyleSheet(
              blockquote: TextStyle(
                  fontSize: 16,
                  fontStyle: FontStyle.italic
              ),
              blockquoteDecoration: BoxDecoration(
                color: Theme.of(context).appBarTheme.backgroundColor,
                border:  Border(
                  left: BorderSide(
                    color: Theme.of(context).primaryColor,
                    width: 3.0,
                  ),
                ),
              ),
              blockquotePadding: EdgeInsets.only(left: 12),
            ),
          ),
        );
      case 6:
        final data = text.split('\n');
        final _markDownData = data.map((x) => "- $x\n").reduce((x,y) => "$x$y");
        return Container(
          margin: EdgeInsets.symmetric(vertical: 25.0),
          child: Markdown(
            data: _markDownData,
            styleSheet: MarkdownStyleSheet(
              listBullet: TextStyle(
                fontSize: 16.0,
              )
            ),
          ),
        );
      case 7:
        final data = text.split('\n');
        final _markDownData = data.mapIndexed((index,x) => "${index+1} $x\n").reduce((x,y) => "$x$y");
        return Container(
          margin: EdgeInsets.symmetric(vertical: 25.0),
          child: Markdown(
            data: _markDownData,
            styleSheet: MarkdownStyleSheet(
                listBullet: TextStyle(
                  fontSize: 16.0,
                )
            ),
          ),
        );
      case 8:
        return Divider(
          color: Colors.black,
          height: 2,
        );
      case 9:
        return Divider(
          color: Colors.black,
          height: 2,
        );
      default:
        return Text('');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 16 / 9,
              child: Container(
                color: Colors.black26,
                child: Image(
                  image: NetworkImage(
                    ImageStore.stores[dummyArticle.coverMedia.rectangle.store]! + Uri.encodeFull(dummyArticle.coverMedia.rectangle.storePath),
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Row(
                  //   children: [
                  //     ListView.separated(
                  //         scrollDirection: Axis.horizontal,
                  //         shrinkWrap: true,
                  //         itemBuilder: (context, index){
                  //           return Text(
                  //             CategoryNumbers.categoryNumbers[dummyArticle.categories[index].number]!,
                  //             style: const TextStyle(
                  //                 fontSize: 1,
                  //                 color: Color(0xFF6E6E6E)
                  //             ),
                  //           );
                  //         },
                  //         separatorBuilder: (context, index){
                  //           return Text(
                  //             ' |',
                  //             style: TextStyle(
                  //                 fontSize: 1,
                  //                 color: Color(0xFF6E6E6E)
                  //             ),
                  //           );
                  //         },
                  //         itemCount: dummyArticle.categories.length
                  //     ),
                  //   ],
                  // ),
                  SizedBox(height: 8),
                  Text(
                    dummyArticle.title,
                      style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w600,
                      ),
                  ),
                  SizedBox(height: 7),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'September 20, 2020 ',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF6E6E6E),
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.watch_later_outlined,
                            color: Color(0xFF6E6E6E),
                            size: 14,
                          ),
                          Text(
                            ' ${Duration(seconds: dummyArticle.readTime).inMinutes} min',
                            style: TextStyle(
                              color: Color(0xFF6E6E6E),
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
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
                                  return Text(
                                    limitString(dummyArticle.authors[index].name),
                                    style: const TextStyle(
                                        fontSize: 12,
                                        color: Color(0xFF6E6E6E)
                                    ),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  );
                                },
                                separatorBuilder: (context, index){
                                  return Text(
                                    ', ',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Color(0xFF6E6E6E)
                                    ),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  );
                                },
                                itemCount: dummyArticle.authors.length
                            ),
                          ],
                        ),
                      ),
                      Container( margin: EdgeInsets.only(right: 18, bottom: 10), child: SizedBox(height: 25, width: 30, child: IconButton(onPressed: () {}, icon: Icon(Icons.share_outlined, size: 18, color: Color(0xFF6E6E6E),)))),
                    ],
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  // ListView.builder(
                  //   scrollDirection: Axis.vertical,
                  //   shrinkWrap: true,
                  //   physics: const NeverScrollableScrollPhysics(),
                  //   itemBuilder: (context,index){
                  //     return renderContent(dummyArticle.content[index]);
                  //     },
                  //   itemCount: dummyArticle.content.length,
                  // ),
                  SizedBox(height: 10),
                  Text('DISCLAIMER: The content, opinions or views expressed on the Monday Mornings website and its social media platforms, including, but not limited to Facebook, Instagram and Twitter pages, are strictly the property of Monday Morning and represent the extensive research and work of the working team of respective academic year of Monday Morning and not those of the institute. \n \nThe reports and statements published consolidated from the collected background research and interviews. The institutes official statements can be found in the press releases published by the institute or via an RTI application.No article or any statements by Monday Morning is to be reproduced, presented or distributed in part or whole without prior permission of the Executive Body of Monday Morning for any purposes, including, but not limited to print and electronic form.',
                  style: TextStyle(
                    fontStyle: FontStyle.italic
                  ),),
                  SizedBox(height: 30),
                  Row(
                    children: [
                      Text(
                        'Tags:',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xff828282),
                        ),
                      ),
                      Tag(tag: 'Deparpment'),
                      Tag(tag: 'BM-BT'),
                      Tag(tag: 'Placement'),
                    ],
                  ),
                  SizedBox(height: 20),
                  Divider(
                    thickness: 1,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
