import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:mondaymorning/src/services/themes/size_config.dart';
import 'package:mondaymorning/src/ui/components/more/about/cc_card.dart';
import 'package:mondaymorning/src/ui/components/more/about/email_card.dart';
import 'package:mondaymorning/src/ui/components/more/about/map_card.dart';
import 'package:mondaymorning/src/ui/components/more/about/social_card.dart';

@RoutePage<void>(name: 'AboutRoute')
class AboutMMScreen extends StatelessWidget {
  const AboutMMScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'About and Contact Us',
          style: Theme.of(context).textTheme.displayMedium,
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.safeBlockHorizontal! * 4,
              ),
              child: Text(
                'Monday Morning is the official student media body of National Institute of Technology, Rourkela. Ever since its inception in 2006, it has been serving as a vital link between student community and the administration by being the featured news feed for the students, professors, and alumni, about campus activities, department updates, recruitment information, SAC happenings, fest coverage, alumni news, weekly polls and interviews with the Director, Chief Warden, Professors, distinguished alumni and dignitaries, and exceptional students. ',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
            SizedBox(height: SizeConfig.safeBlockVertical! * 2),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.safeBlockHorizontal! * 4),
              child: EmailCard(),
            ),
            SizedBox(height: SizeConfig.safeBlockVertical! * 2),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.safeBlockHorizontal! * 4),
              child: CCCard(),
            ),
            SizedBox(height: SizeConfig.safeBlockVertical! * 2),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.safeBlockHorizontal! * 4),
              child: SocialMediaCard(),
            ),
            SizedBox(height: SizeConfig.safeBlockVertical! * 2),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.safeBlockHorizontal! * 4),
              child: MapCards(),
            ),
            SizedBox(height: SizeConfig.safeBlockVertical! * 2),
          ],
        ),
      ),
    );
  }
}
