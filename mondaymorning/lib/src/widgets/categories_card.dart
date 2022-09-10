/// CategoriesCard is a card widget for category menu cards. It takes 3 inputs image, title and onCardTap function for building category card

import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:auto_size_text/auto_size_text.dart';

class CategoriesCard extends StatefulWidget {

  /// Constructor for [CategoriesCard]
  final String image;
  final String title;
  final String link;

  const CategoriesCard({
    Key? key,
    required this.image,
    required this.title,
    required this.link,
  }) : super(key: key);

  @override
  State<CategoriesCard> createState() => _CategoriesCardState();
}

class _CategoriesCardState extends State<CategoriesCard> {

  Future<void> _launchUrl(String url) async {
    var uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw 'Could not launch $uri';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Align(
        alignment: Alignment.center,
        child: AspectRatio(
          aspectRatio: 118 / 168,
          child: Card(
            clipBehavior: Clip.antiAlias,
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ),
            child: Link(
              target: LinkTarget.self,
              uri: Uri.parse(widget.link),
              builder: (context, followLink) => InkWell(
                splashColor: Colors.blue.withAlpha(30),
                onTap: (){
                  _launchUrl(widget.link);
                  followLink;
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                  child: Column(
                    children: [
                      Expanded(
                        child: Align(
                          alignment: Alignment.center,
                          child: AspectRatio(
                            aspectRatio: 4/5,
                            child: Container(
                              constraints: const BoxConstraints.expand(),
                              child: Image.asset(
                                widget.image,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          width: MediaQuery.of(context).size.width*0.235,
                          height: 20,
                          child: Center(
                            child: AutoSizeText(
                                widget.title,
                              style: TextStyle(
                                fontSize: 15.4,
                                fontWeight: FontWeight.w600,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
