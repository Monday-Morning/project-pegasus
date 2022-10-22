import 'package:auto_route/annotations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mondaymorning/src/models/article/content.dart';
import 'package:mondaymorning/src/providers/mockdata/mock_data.dart';
import 'package:mondaymorning/src/services/graphql/graphql_service.dart';
import 'package:mondaymorning/src/services/graphql/queries/articles/getArticleById.dart';
import 'package:mondaymorning/src/utils/getStores.dart';
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
          margin: EdgeInsets.symmetric(vertical: 25.0),
          child: Markdown(
            data: text, // TODO
          ),
        );
    }

    return Text('');
  }

  @override
  Widget build(BuildContext context) {
    final article = Post.posts[postId - 1];
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
                    article.description,
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
                  Text(
                    'CAMPUS-BUZZ  | ACADEMICS ',
                    style: (
                    TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF999999),
                    )
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    article.title,
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
                            ' ${article.time} min',
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
                      Text(
                        article.author,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF6E6E6E),
                        ),
                      ),
                      Container( margin: EdgeInsets.only(right: 18, bottom: 10), child: SizedBox(height: 25, width: 30, child: IconButton(onPressed: () {}, icon: Icon(Icons.share_outlined, size: 18, color: Color(0xFF6E6E6E),)))),
                    ],
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  Text(
                    'Delay in the curriculum may seem enthralling at the moment but the clouds of uncertainty that it casts on the future of students and academics as a whole- is an extra-ordinary issue that has to be considered. However, walking abreast of the transformations, NIT Rourkela has tried to put its best foot forward in these rather questioning times. (Excerpt)',
                  ),
                  Text(
                    'Delay in the curriculum may seem enthralling at the moment but the clouds of uncertainty that it casts on the future of students and academics as a whole- is an extra-ordinary issue that has to be considered. However, walking abreast of the transformations, NIT Rourkela has tried to put its best foot forward in these rather questioning times. (Excerpt) Delay in the curriculum may seem enthralling at the moment but the clouds of uncertainty that it casts on the future of students and academics as a whole- is an extra-ordinary issue that has to be considered. However, walking abreast of the transformations, NIT Rourkela has tried to put its best foot forward in these rather questioning times. (Excerpt) Delay in the curriculum may seem enthralling at the moment but the clouds of uncertainty that it casts on the future of students and academics as a whole- is an extra-ordinary issue that has to be considered. However, walking abreast of the transformations, NIT Rourkela has tried to put its best foot forward in these rather questioning times. (Excerpt) Delay in the curriculum may seem enthralling at the moment but the clouds of uncertainty that it casts on the future of students and academics as a whole- is an extra-ordinary issue that has to be considered. However, walking abreast of the transformations, NIT Rourkela has tried to put its best foot forward in these rather questioning times. (Excerpt)',
                  ),
                  ImageBox(imageURL: 'https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                  SizedBox(height: 10),
                  Heading2(heading2: 'Siddhant Das'),
                  SizedBox(height: 10),
                  Text(
                      'Delay in the curriculum may seem enthralling at the moment but the clouds of uncertainty that it casts on the future of students and academics as a whole- is an extra-ordinary issue that has to be considered. However, walking abreast of the transformations, NIT Rourkela has tried to put its best foot forward in these rather questioning times. (Excerpt)'),
                  SizedBox(height: 10),
                  QuoteBox(),
                  SizedBox(height: 10),
                  Text('Delay in the curriculum may seem enthralling at the moment but the clouds of uncertainty that it casts on the future of students and academics as a whole- is an extra-ordinary issue that has to be considered. However, walking abreast of the transformations, NIT Rourkela has tried to put its best foot forward in these rather questioning times. (Excerpt)'),
                  SizedBox(height: 10),
                  Heading2(heading2: 'Heading: new 2'),
                  SizedBox(height: 10),
                  Text('Delay in the curriculum may seem enthralling at the moment but the clouds of uncertainty that it casts on the future of students and academics as a whole- is an extra-ordinary issue that has to be considered. However, walking abreast of the transformations, NIT Rourkela has tried to put its best foot forward in these rather questioning times. (Excerpt)'),
                  SizedBox(height: 10),
                  Text('DISCLAIMER: The content, opinions or views expressed on the Monday Mornings website and its social media platforms, including, but not limited to Facebook, Instagram and Twitter pages, are strictly the property of Monday Morning and represent the extensive research and work of the working team of respective academic year of Monday Morning and not those of the institute. \n \nThe reports and statements published consolidated from the collected background research and interviews. The institutes official statements can be found in the press releases published by the institute or via an RTI application.No article or any statements by Monday Morning is to be reproduced, presented or distributed in part or whole without prior permission of the Executive Body of Monday Morning for any purposes, including, but not limited to print and electronic form.'),
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
