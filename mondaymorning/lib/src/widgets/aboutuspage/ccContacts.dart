import 'dart:async';
import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';

class CCContact extends StatelessWidget {
  String name;
  String number;
  String link;
  CCContact({Key? key, required this.name, required this.number, required this.link}) : super(key: key);

  Future<void> _launchUrl(String url) async{
    if (await canLaunch(url))
      await launch(url);
    else
      throw "Could not launch $url";
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          name,
          style: const TextStyle(
            fontSize: 16.4,
            letterSpacing: 0.2,
          ),
        ),
        Text(
          number,
          style: const TextStyle(
            fontSize: 16.4,
            letterSpacing: 0.2,
          ),
        ),
        Link(
          uri: Uri.parse(link),
          builder: (context, followLink) => GestureDetector(
            onTap: (){
              _launchUrl(link);
            },
            child: Container(
              height: 30,
              width: 30,
              child: Icon(Icons.mail_outline),
            ),
          ),
        ),
      ],
    );
  }
}
