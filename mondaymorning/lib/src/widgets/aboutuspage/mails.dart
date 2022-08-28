import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';

class Mails extends StatelessWidget {
  String title;
  String link;
  Mails({Key? key, required this.title, required this.link}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10),
        Text(
          title,
          style: TextStyle(
            color: Color(0xff999999),
          ),
        ),
        SizedBox(height: 4),
        Link(
          uri: Uri.parse("mailto:$link"),
          builder:(context, followLink) => GestureDetector(
            onTap: followLink,
            child: Container(
              height: 20,
              child: Text(
                link,
                style:TextStyle(
                  fontSize: 16,
                  letterSpacing: 0.4,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
