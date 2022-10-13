import 'package:flutter/material.dart';
import 'package:mondaymorning/src/widgets/aboutuspage/ccsCard.dart';
import 'package:mondaymorning/src/widgets/aboutuspage/emailAboutUsCard.dart';
import 'package:mondaymorning/src/widgets/aboutuspage/mapCard.dart';
import 'package:mondaymorning/src/widgets/aboutuspage/socialMediaCard.dart';

class AboutMMPage extends StatelessWidget {
  const AboutMMPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About and Contact Us'),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Text(
                "Monday Morning is the official student media body of National Institute of Technology, Rourkela. Ever since its inception in 2006, it has been serving as a vital link between student community and the administration by being the featured news feed for the students, professors, and alumni, about campus activities, department updates, recruitment information, SAC happenings, fest coverage, alumni news, weekly polls and interviews with the Director, Chief Warden, Professors, distinguished alumni and dignitaries, and exceptional students. ",
                style: TextStyle(
                  fontSize: 16.3,
                  height: 1.3,
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: EmailAboutUsCard(),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: CCsCard(),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: SocialMediaCard(),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: MapCards(),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
