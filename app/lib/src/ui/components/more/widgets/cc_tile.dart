import 'package:flutter/material.dart';
import 'package:mondaymorning/src/services/themes/size_config.dart';
import 'package:mondaymorning/src/ui/components/more/widgets/url_loader.dart';

class CCTile extends StatelessWidget {
  final String name;
  final String number;
  final String mail;
  const CCTile(
      {Key? key, required this.name, required this.number, required this.mail})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          name,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        GestureDetector(
          onTap: () {
            URLLauncher.uriLauncher(Uri.parse('tel:$number'));
          },
          child: Text(
            number,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        GestureDetector(
          onTap: () {
            URLLauncher.uriLauncher(Uri.parse(mail));
          },
          child: Icon(
            Icons.mail_outline,
            size: SizeConfig.safeBlockHorizontal! * 6,
          ),
        ),
      ],
    );
  }
}
