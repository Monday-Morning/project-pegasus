import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class ArticleImageView extends StatefulWidget {
  final String image;
  const ArticleImageView({Key? key, required this.image}) : super(key: key);

  @override
  State<ArticleImageView> createState() => _ArticleImageViewState();
}

class _ArticleImageViewState extends State<ArticleImageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            PhotoView(
              imageProvider: NetworkImage(
                widget.image,
              ),
              minScale: PhotoViewComputedScale.contained * 0.9,
              maxScale: PhotoViewComputedScale.contained * 2.5,
              backgroundDecoration: BoxDecoration(
                color: Theme.of(context).scaffoldBackgroundColor,
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.close),
                iconSize: 28,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
