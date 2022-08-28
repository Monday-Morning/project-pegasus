import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';

class PageCategoriesCard extends StatelessWidget {
  final String image;
  final String title;
  final void Function() onCardTap;

  const PageCategoriesCard({
    Key? key,
    required this.image,
    required this.title,
    required this.onCardTap,
  }) : super(key: key);

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
            child: InkWell(
                splashColor: Colors.blue.withAlpha(30),
                onTap: onCardTap,
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
                                image,
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
                              title,
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
    );
  }
}
