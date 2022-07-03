import 'package:auto_route/annotations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mondaymorning/src/providers/mockdata/mock_data.dart';
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

class _FullPageArticleState extends State<FullPageArticle> {
  int postId;
  _FullPageArticleState({required this.postId});
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
