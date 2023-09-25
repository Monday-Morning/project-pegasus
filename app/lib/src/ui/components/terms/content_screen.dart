import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:mondaymorning/src/services/themes/mm_colors.dart';
import 'package:mondaymorning/src/ui/components/terms/terms_content.dart';

@RoutePage<void>(name: 'ContentRoute')
class ContentScreen extends StatelessWidget {
  final String id;
  const ContentScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 10.0),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(5)),
        border: Border.all(color: MMColors.kDividerColor),
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
            borderRadius: const BorderRadius.all(Radius.circular(5)),
          ),
          margin: EdgeInsets.symmetric(horizontal: 10.0),
          padding: EdgeInsets.all(5.0),
          child: ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: termsOfPolicy[id]!.length,
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  height: 20,
                );
              },
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (termsOfPolicy[id]![index].title != 'Introduction')
                        Text(
                          termsOfPolicy[id]![index].title,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      SizedBox(
                        height: 10,
                      ),
                      ListView.separated(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: termsOfPolicy[id]![index].paragraphs.length,
                        itemBuilder: (BuildContext context, int ind) {
                          return Text(
                            termsOfPolicy[id]![index].paragraphs.elementAt(ind),
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return SizedBox(
                            height: 10.0,
                          );
                        },
                      )
                    ],
                  ),
                );
              }),
        ),
      ),
    );
  }
}
