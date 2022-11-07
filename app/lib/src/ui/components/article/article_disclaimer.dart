import 'package:flutter/material.dart';
import 'package:mondaymorning/src/services/themes/size_config.dart';

class ArticleDisclaimer extends StatelessWidget {
  const ArticleDisclaimer({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.symmetric(
        horizontal: SizeConfig.safeBlockHorizontal! * 5,
        vertical: SizeConfig.safeBlockVertical! * 2,
      ),
      sliver: SliverToBoxAdapter(
        child: Text(
          'DISCLAIMER: The content, opinions or views expressed on the Monday Morning\'s website and its social media platforms, including, but not limited to Facebook, Instagram and Twitter pages, are strictly the property of Monday Morning and represent the extensive research and work of the working team of respective academic year of Monday Morning and not those of the institute. The reports and statements published are consolidated from the collected background research and interviews. The institute\'s official statements can be found in the press releases published by the institute or via an RTI application.\n\nNo article or any statements by Monday Morning is to be reproduced, presented or distributed in part or whole without prior permission of the Executive Body of Monday Morning for any purposes, including, but not limited to print and electronic form.',
          style: Theme.of(context)
              .textTheme
              .caption!
              .copyWith(fontStyle: FontStyle.italic),
        ),
      ),
    );
  }
}
