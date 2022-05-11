import 'package:flutter/material.dart';

///ImageBox: Image Widget for full article page view
class ImageBox extends StatelessWidget {
  final String imageURL;
  const ImageBox({Key? key, required this.imageURL}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10),
        Container(
          margin: EdgeInsets.symmetric(vertical: 10),
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
          ),
          child: Image(
            image: NetworkImage(
              imageURL,
            ),
            fit: BoxFit.cover,
          ),
        ),
        Text(
          'Debabrata Malik',
          style: TextStyle(
            fontSize: 12,
            color: Color(0xff999999),
          ),
        ),
        SizedBox(height: 6),
      ],
    );
  }
}
