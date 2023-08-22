import 'package:flutter/material.dart';
import 'package:mondaymorning/src/services/themes/rem_space.dart';
import 'package:mondaymorning/src/services/themes/size_config.dart';
import 'package:mondaymorning/src/ui/components/more/widgets/mail_widget.dart';

class EmailCard extends StatelessWidget {
  const EmailCard({Key? key}) : super(key: key);

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
                horizontal: SizeConfig.safeBlockHorizontal! * 4,
                vertical: SizeConfig.safeBlockVertical! * 2,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Email us at:',
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                  MailWidget(
                    title: 'General queries',
                    link: 'morning.monday@gmail.com',
                  ),
                  MailWidget(
                    title: 'Reporting technical glitches or bugs',
                    link: 'tech.mondaymorning@gmail.com',
                  ),
                  MailWidget(
                    title: 'Sharing NITR-based media',
                    link: 'lensational.mondaymorning@gmail.com',
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
