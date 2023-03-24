import 'package:flutter/material.dart';
import 'package:mondaymorning/src/services/themes/size_config.dart';

///Tile Widget: Single Button for More Page
class TileWidget extends StatelessWidget {
  final String feature;
  final IconData icon;
  final void Function() onTileTap;

  const TileWidget({
    super.key,
    required this.feature,
    required this.icon,
    required this.onTileTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTileTap,
      child: Container(
        margin:
            EdgeInsets.symmetric(horizontal: SizeConfig.safeBlockHorizontal!),
        padding: EdgeInsets.symmetric(
          vertical: SizeConfig.safeBlockVertical!,
          horizontal: SizeConfig.safeBlockHorizontal! * 2,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SizedBox(width: SizeConfig.safeBlockHorizontal!),
                Icon(icon, size: SizeConfig.safeBlockHorizontal! * 6),
                SizedBox(width: SizeConfig.safeBlockHorizontal! * 3),
                Text(
                  feature,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ],
            ),
            Icon(
              Icons.arrow_forward_ios_outlined,
              size: SizeConfig.safeBlockHorizontal! * 5,
            ),
          ],
        ),
      ),
    );
  }
}
