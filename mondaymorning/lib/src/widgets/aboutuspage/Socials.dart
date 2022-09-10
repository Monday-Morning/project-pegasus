import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';

class Socials extends StatelessWidget {
  String lable;
  String link;
  IconData icon;
  Socials({Key? key, required this.lable, required this.link, required this.icon}) : super(key: key);

  Future<void> _launchUrl(String url) async {
    var uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw 'Could not launch $uri';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Link(
      uri: Uri.parse(link),
      builder: (context, followLink) => GestureDetector(
        onTap: followLink,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(icon, size: 34),
            SizedBox(width: 20),
            GestureDetector(
                onTap: (){
                  _launchUrl(link);
                  followLink;
                },
                child: Container(
                  height: 20,
                  child: Text(
                    lable,
                    style: TextStyle(
                      fontSize: 17,
                      letterSpacing: 0.3,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
