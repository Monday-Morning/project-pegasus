import 'package:flutter/material.dart';
import 'package:mondaymorning/src/widgets/aboutuspage/Socials.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class SocialMediaCard extends StatelessWidget {
  const SocialMediaCard({Key? key}) : super(key: key);

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
                    "Social media handles:",
                    style: TextStyle(
                      fontSize: 20,
                      letterSpacing: 0.4,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 12),
                  Socials(lable: "mondaymorningnitr", link: "https://www.facebook.com/mondaymorningnitr", icon: MdiIcons.facebook),
                  SizedBox(height: 6),
                  Socials(lable: "mondaymorningnitrofficial", link: "https://www.instagram.com/mondaymorningnitrofficial", icon: MdiIcons.instagram),
                  SizedBox(height: 6),
                  Socials(lable: "company/mondaymorning", link: "https://www.linkedin.com/company/monday-morning-the-official-student-media-body-of-nit-rourkela/mycompany", icon: MdiIcons.linkedin),
                  SizedBox(height: 6),
                  Socials(lable: "@mmnitrkl", link: "https://twitter.com/mmnitrkl", icon: MdiIcons.twitter),
                  SizedBox(height: 6),
                  Socials(lable: "MondayMorningNITRKL", link: "https://www.youtube.com/c/MondayMorningNITR", icon: MdiIcons.youtube),
                  SizedBox(height: 6),
                  Socials(lable: "CandidlyNITR", link: "https://open.spotify.com/show/7ljgcbXzt4VQRJ1SLIECNf", icon: MdiIcons.spotify),
                  SizedBox(height: 8),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
