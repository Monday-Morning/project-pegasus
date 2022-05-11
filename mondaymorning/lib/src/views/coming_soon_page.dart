import 'package:flutter/material.dart';

/// ComingSoonPage : Has ComingSoon GIF and Text
class ComingSoonPage extends StatelessWidget {
  const ComingSoonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            Image.network(
              'https://mir-s3-cdn-cf.behance.net/project_modules/disp/fbc00f81999693.5d10c08723f94.gif',
              fit: BoxFit.cover,
            ),
            Text(
              'Coming Soon..',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
