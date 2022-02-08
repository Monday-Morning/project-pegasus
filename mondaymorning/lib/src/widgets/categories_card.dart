/// CategoriesCard is a card widget for category menu cards. It takes 3 inputs image, title and onCardTap function for building category card

import 'package:flutter/material.dart';

class CategoriesCard extends StatelessWidget {

  /// Constructor for [CategoriesCard]
  final String image;
  final String title;
  final void Function() onCardTap;

  const CategoriesCard({
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
                      child: Text(
                          title,
                        style: TextStyle(
                          fontSize: 15.4,
                          fontWeight: FontWeight.w600,
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
