import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:mondaymorning/src/ui/components/more/widgets/url_loader.dart';

class MarkdownText extends StatelessWidget {
  const MarkdownText({
    Key? key,
    required this.text,
    this.overrideTextColor,
    this.overrideTextScale,
  }) : super(key: key);

  final String text;
  final Color? overrideTextColor;
  final double? overrideTextScale;

  @override
  Widget build(BuildContext context) {
    return MarkdownBody(
      selectable: true,
      shrinkWrap: true,
      onTapLink: (text, href, title) {
        URLLauncher.uriLauncher(Uri.parse(href!));
      },
      softLineBreak: true,
      data: text,
      styleSheetTheme: MarkdownStyleSheetBaseTheme.material,
      styleSheet: MarkdownStyleSheet.fromTheme(
        overrideTextColor == null
            ? Theme.of(context)
            : Theme.of(context).copyWith(
                textTheme: Theme.of(context).textTheme.apply(
                      bodyColor: overrideTextColor,
                      fontSizeFactor: overrideTextScale ?? 1,
                    ),
              ),
      ),
    );
  }
}
