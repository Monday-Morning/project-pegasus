import 'package:flutter/material.dart';
import 'package:mondaymorning/src/api/models/squiggle/squiggle.dart';
import 'package:mondaymorning/src/services/themes/rem_space.dart';
import 'package:mondaymorning/src/services/themes/size_config.dart';
import 'package:mondaymorning/src/ui/components/article/markdown_text.dart';

class SquiggleBox extends StatelessWidget {
  final Squiggle squiggle;

  const SquiggleBox({
    Key? key,
    required this.squiggle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: SizeConfig.safeBlockHorizontal! * 1.5,
        vertical: SizeConfig.safeBlockVertical! * 2,
      ),
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.safeBlockHorizontal! * 1.5,
            vertical: SizeConfig.safeBlockVertical! * 1.5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
              Theme.of(context).extension<REMSpace>()!.get(1)),
          color: Color(0xffF6D982),
        ),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                    Theme.of(context).extension<REMSpace>()!.get(1)),
                color: Color(0xffE15B62),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.safeBlockHorizontal! * 5,
                    vertical: SizeConfig.safeBlockVertical! * 1),
                child: Text(
                  'Squiggles',
                  style: Theme.of(context).textTheme.displaySmall!.copyWith(
                        fontWeight: FontWeight.w900,
                        color: Color(0xffF6F6F6),
                      ),
                ),
              ),
            ),
            SizedBox(height: SizeConfig.safeBlockVertical!),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.safeBlockHorizontal! * 2),
              child: MarkdownText(
                text: squiggle.content,
                overrideTextColor: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
