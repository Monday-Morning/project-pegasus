import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// ComingSoonPage : Has ComingSoon GIF and Text
class ComingSoonPage extends StatelessWidget {
  const ComingSoonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ImageIcon(
              AssetImage("assets/images/mmlogo.png"),
              color: Theme.of(context).appBarTheme.foregroundColor,
              size: 30,
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              width: 170,
              child: AutoSizeText(
                'Monday Morning',
                style: GoogleFonts.ibmPlexSans(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
                maxLines: 1,
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.156,
            ),
          ],
        ),
        centerTitle: true,
        leading: const AutoBackButton(),
      ),
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
