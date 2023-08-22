import 'package:flutter/material.dart';
import 'package:mondaymorning/src/services/themes/rem_space.dart';
import 'package:mondaymorning/src/services/themes/size_config.dart';
import 'package:mondaymorning/src/ui/components/more/widgets/cc_tile.dart';

class CCCard extends StatelessWidget {
  const CCCard({Key? key}) : super(key: key);

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
                vertical: SizeConfig.safeBlockVertical! * 2,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Chief Coordinators',
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                  SizedBox(
                    height: SizeConfig.safeBlockVertical!,
                  ),
                  CCTile(
                    name: 'Aditya Bharambe',
                    number: '7039267530',
                    mail: 'mailto:morning.monday@gmail.com',
                  ),
                  SizedBox(height: SizeConfig.safeBlockVertical! * 0.5),
                  CCTile(
                    name: 'Preeti Priyadarshini',
                    number: '7656980495',
                    mail: 'mailto:morning.monday@gmail.com',
                  ),
                  SizedBox(height: SizeConfig.safeBlockVertical! * 0.5),
                  CCTile(
                    name: 'Arpan Vihan',
                    number: '6398454922',
                    mail: 'mailto:morning.monday@gmail.com',
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
