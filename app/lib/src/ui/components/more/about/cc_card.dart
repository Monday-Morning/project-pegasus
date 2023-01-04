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
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  SizedBox(
                    height: SizeConfig.safeBlockVertical!,
                  ),
                  CCTile(
                    name: 'Aditya Tripathi',
                    number: '7873933061',
                    mail: 'mailto:asutoshranjan@gmail.com',
                  ),
                  SizedBox(height: SizeConfig.safeBlockVertical! * 0.5),
                  CCTile(
                    name: 'Saurav Sahoo',
                    number: '7873933061',
                    mail: 'mailto:asutoshranjan@gmail.com',
                  ),
                  SizedBox(height: SizeConfig.safeBlockVertical! * 0.5),
                  CCTile(
                    name: 'Rashmi Ranjan',
                    number: '7873933061',
                    mail: 'mailto:asutoshranjan13@gmail.com',
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
