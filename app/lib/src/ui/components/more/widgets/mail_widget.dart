import 'package:flutter/material.dart';
import 'package:mondaymorning/src/services/themes/size_config.dart';
import 'package:url_launcher/link.dart';

class MailWidget extends StatelessWidget {
  final String title;
  final String link;
  const MailWidget({Key? key, required this.title, required this.link})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: SizeConfig.safeBlockVertical!),
        Text(
          title,
          style: Theme.of(context).textTheme.bodySmall!.copyWith(fontSize: 12),
        ),
        Link(
          uri: Uri.parse('mailto:$link'),
          builder: (context, followLink) => GestureDetector(
            onTap: followLink,
            child: Text(
              link,
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(decoration: TextDecoration.underline),
            ),
          ),
        ),
      ],
    );
  }
}
