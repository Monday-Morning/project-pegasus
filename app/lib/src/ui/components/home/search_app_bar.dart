import 'package:flutter/material.dart';
import 'package:mondaymorning/src/services/themes/size_config.dart';

class SearchAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SearchAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
          height: SizeConfig.safeBlockVertical! * 9,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ImageIcon(
                AssetImage(
                    'assets/images/${Theme.of(context).brightness.name}/mm_logo.png'),
                color: Theme.of(context).appBarTheme.foregroundColor,
                size: SizeConfig.safeBlockVertical! * 8,
              ),
              SizedBox(
                width: SizeConfig.safeBlockHorizontal! * 2,
              ),
              ImageIcon(
                AssetImage(
                    'assets/images/${Theme.of(context).brightness.name}/monday_morning.png'),
                color: Theme.of(context).appBarTheme.foregroundColor,
                size: SizeConfig.safeBlockHorizontal! * 45,
              ),
              Spacer(flex: 1),
              Container(
                margin: EdgeInsets.only(
                  top: SizeConfig.safeBlockVertical! * 2,
                  bottom: SizeConfig.safeBlockVertical! * 2.5,
                ),
                padding:
                    EdgeInsets.only(right: SizeConfig.safeBlockHorizontal! * 1),
                decoration: BoxDecoration(
                  // shape: BoxShape.circle,
                  color: Theme.of(context).cardColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      bottomLeft: Radius.circular(50)),
                ),
                height: SizeConfig.safeBlockVertical! * 8,
                child: IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {},
                ),
              )
            ],
          )),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(SizeConfig.safeBlockVertical! * 10);
}
