import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:mondaymorning/src/services/themes/size_config.dart';
import 'package:mondaymorning/src/ui/components/home/search_app_bar.dart';
import 'package:mondaymorning/src/ui/components/more/widgets/url_loader.dart';

class SocialData {
  final IconData icon;
  final String link;

  SocialData({required this.icon, required this.link});
}

@RoutePage<dynamic>(name: 'ExpressionRoute')
class ComingSoonScreen extends StatelessWidget {
  ComingSoonScreen({super.key});

  final List<SocialData> socials = [
    SocialData(
      icon: MdiIcons.facebook,
      link: 'https://www.facebook.com/mondaymorningnitr',
    ),
    SocialData(
      icon: MdiIcons.instagram,
      link: 'https://www.instagram.com/mondaymorningnitrofficial',
    ),
    SocialData(
      icon: MdiIcons.youtube,
      link: 'https://www.youtube.com/c/MondayMorningNITR',
    ),
    SocialData(
      icon: MdiIcons.twitter,
      link: 'https://twitter.com/mmnitrkl',
    ),
    SocialData(
      icon: MdiIcons.linkedin,
      link:
          'https://www.linkedin.com/company/monday-morning-the-official-student-media-body-of-nit-rourkela/mycompany',
    ),
    SocialData(
        icon: MdiIcons.spotify,
        link: 'https://open.spotify.com/show/7ljgcbXzt4VQRJ1SLIECNf')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SearchAppBar(),
      body: Center(
        child: Container(
          margin: EdgeInsets.symmetric(
            vertical: SizeConfig.safeBlockVertical! * 10,
          ),
          padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.safeBlockHorizontal! * 5,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                child: Image.asset(
                  'assets/images/${Theme.of(context).brightness.name}/coming_soon.png',
                ),
              ),
              SizedBox(
                height: SizeConfig.safeBlockVertical! * 5,
              ),
              Column(
                children: [
                  Text(
                    'Connect with us on',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for (SocialData social in socials)
                        IconButton(
                          icon: Icon(social.icon),
                          onPressed: () {
                            URLLauncher.uriLauncher(
                              Uri.parse(social.link),
                            );
                          },
                        ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
