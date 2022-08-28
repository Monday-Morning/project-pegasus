import 'package:flutter/material.dart';
import 'package:mondaymorning/src/widgets/aboutuspage/mails.dart';

class EmailAboutUsCard extends StatelessWidget {
  const EmailAboutUsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Material(
            elevation: 5,
            borderRadius: BorderRadius.circular(8),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Email us at:",
                    style: TextStyle(
                      fontSize: 20,
                      letterSpacing: 0.4,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Mails(title: "General queries", link: "morning.monday@gmail.com "),
                  Mails(title: "Reporting technical glitches or bugs", link: "tech.mondaymorning@gmail.com"),
                  Mails(title: "Sharing NITR-based media", link: "lensational.mondaymorning@gmail.com",),
                  SizedBox(height: 5),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
