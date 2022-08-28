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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "About and Contact Us",
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 6),
                    Container(
                      height: 3.8,
                      color: Colors.blue,
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 15),

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
