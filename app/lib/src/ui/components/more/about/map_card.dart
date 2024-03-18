import 'package:flutter/material.dart';
import 'package:mondaymorning/src/services/themes/rem_space.dart';
import 'package:mondaymorning/src/services/themes/size_config.dart';
import 'package:mondaymorning/src/ui/components/more/widgets/url_loader.dart';

class MapCards extends StatelessWidget {
  const MapCards({Key? key}) : super(key: key);

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
                    'We are based at:',
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                  SizedBox(height: SizeConfig.safeBlockVertical! * 2),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Student Activity Center\nNIT Rourkela\nSector-1, Rourkela\nOdisha, India\nPIN: 769008',
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          URLLauncher.uriLauncher(
                            Uri.parse('https://goo.gl/maps/L77bRS9fZBT8hdQP9'),
                          );
                        },
                        child: Column(
                          children: [
                            Material(
                              elevation: 4,
                              borderRadius: BorderRadius.circular(7),
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              child: SizedBox(
                                height: SizeConfig.safeBlockVertical! * 12,
                                width: SizeConfig.safeBlockHorizontal! * 25,
                                child: Image.asset(
                                  'assets/images/dark/MapSac.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: SizeConfig.safeBlockVertical! * 0.5,
                            ),
                            Text(
                              'See on Maps',
                              style: TextStyle(
                                fontSize: 14,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
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
