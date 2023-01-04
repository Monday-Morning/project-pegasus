import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:mondaymorning/src/services/themes/rem_space.dart';
import 'package:mondaymorning/src/services/themes/size_config.dart';
import 'package:mondaymorning/src/ui/components/more/widgets/social_tile.dart';

class SocialMediaCard extends StatelessWidget {
  const SocialMediaCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Card(
            surfaceTintColor: Colors.white,
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                Theme.of(context).extension<REMSpace>()!.get(1),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.safeBlockHorizontal! * 3,
                  vertical: SizeConfig.safeBlockVertical! * 2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Social media handles:',
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  SizedBox(height: SizeConfig.safeBlockVertical! * 2),
                  SocialTile(
                    lable: 'mondaymorningnitr',
                    link: 'https://www.facebook.com/mondaymorningnitr',
                    icon: MdiIcons.facebook,
                  ),
                  SizedBox(height: SizeConfig.safeBlockVertical! * 0.5),
                  SocialTile(
                    lable: 'mondaymorningnitrofficial',
                    link: 'https://www.instagram.com/mondaymorningnitrofficial',
                    icon: MdiIcons.instagram,
                  ),
                  SizedBox(height: SizeConfig.safeBlockVertical! * 0.5),
                  SocialTile(
                    lable: 'company/mondaymorning',
                    link:
                        'https://www.linkedin.com/company/monday-morning-the-official-student-media-body-of-nit-rourkela/mycompany',
                    icon: MdiIcons.linkedin,
                  ),
                  SizedBox(height: SizeConfig.safeBlockVertical! * 0.5),
                  SocialTile(
                    lable: '@mmnitrkl',
                    link: 'https://twitter.com/mmnitrkl',
                    icon: MdiIcons.twitter,
                  ),
                  SizedBox(height: SizeConfig.safeBlockVertical! * 0.5),
                  SocialTile(
                    lable: 'MondayMorningNITRKL',
                    link: 'https://www.youtube.com/c/MondayMorningNITR',
                    icon: MdiIcons.youtube,
                  ),
                  SizedBox(height: SizeConfig.safeBlockVertical! * 0.5),
                  SocialTile(
                    lable: 'CandidlyNITR',
                    link:
                        'https://open.spotify.com/show/7ljgcbXzt4VQRJ1SLIECNf',
                    icon: MdiIcons.spotify,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
