import 'package:flutter/material.dart';
import 'package:mondaymorning/src/services/themes/size_config.dart';
import 'package:mondaymorning/src/ui/components/more/widgets/url_loader.dart';

class SocialTile extends StatelessWidget {
  final String lable;
  final String link;
  final IconData icon;
  const SocialTile(
      {Key? key, required this.lable, required this.link, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => URLLauncher.uriLauncher(Uri.parse(link)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(icon, size: SizeConfig.safeBlockHorizontal! * 6),
          SizedBox(width: SizeConfig.safeBlockHorizontal! * 1.5),
          Text(
            lable,
            style: Theme.of(context)
                .textTheme
                .bodyText1!
                .copyWith(decoration: TextDecoration.underline),
          ),
        ],
      ),
    );
  }
}
