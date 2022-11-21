import 'package:flutter/material.dart';
import 'package:mondaymorning/src/services/themes/size_config.dart';

class CategoriesAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CategoriesAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        elevation: 0,
        title: Column(
          children: [
            SizedBox(
              height: SizeConfig.safeBlockVertical! * 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Categories',
                  style: Theme.of(context).textTheme.headline1!.copyWith(
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context).primaryColor,
                      ),
                ),
                SizedBox(
                  width: SizeConfig.safeBlockHorizontal! * 3,
                ),
                Expanded(
                  child: Container(
                    height: 2,
                    margin: EdgeInsets.only(bottom: 6.0),
                    color: Theme.of(context).primaryColor,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(SizeConfig.safeBlockVertical! * 10);
}
