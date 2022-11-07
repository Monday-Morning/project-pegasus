import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class MarkdownText extends StatelessWidget {
  const MarkdownText({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Markdown(
      selectable: true,
      shrinkWrap: true,
      onTapLink: (text, href, title) {
        // TODO: add link to browser
      },
      softLineBreak: true,
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      data: text,
      styleSheet: MarkdownStyleSheet.fromTheme(Theme.of(context))
          .copyWith(textAlign: WrapAlignment.spaceBetween),
    );
  }
}
