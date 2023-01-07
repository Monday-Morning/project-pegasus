import 'package:flutter/material.dart';
import 'package:mondaymorning/src/services/themes/rem_size.dart';
import 'package:mondaymorning/src/services/themes/rem_space.dart';
import 'package:mondaymorning/src/services/themes/size_config.dart';
import 'package:mondaymorning/src/ui/components/loading/shimmer_widget.dart';
import 'package:shimmer/shimmer.dart';

class FullLoadingScreen extends StatelessWidget {
  const FullLoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //     children: [
      //       Column(
      //         children: [
      //           Container(
      //             decoration: BoxDecoration(
      //               shape: BoxShape.circle,
      //               image: DecorationImage(
      //                 image: AssetImage(
      //                     'assets/images/${Theme.of(context).brightness.name}/mm_logo.png'),
      //                 fit: BoxFit.fill,
      //               ),
      //             ),
      //             child: SizedBox.square(
      //               dimension:
      //                   Theme.of(context).extension<REMSize>()!.baseSize * 10,
      //             ),
      //           ),
      //           SizedBox(
      //               height: Theme.of(context).extension<REMSpace>()!.get(1)),
      //           Container(
      //             margin: EdgeInsets.symmetric(
      //                 horizontal:
      //                     Theme.of(context).extension<REMSpace>()!.get(6)),
      //             child: Image(
      //               image: AssetImage(
      //                   'assets/images/${Theme.of(context).brightness.name}/monday_morning.png'),
      //             ),
      //           ),
      //         ],
      //       ),
      //       Column(
      //         children: [
      //           CircularProgressIndicator(),
      //           SizedBox(
      //               height: Theme.of(context).extension<REMSpace>()!.get(2)),
      //           Text('Loading...',
      //               style: Theme.of(context).textTheme.bodyText1),
      //         ],
      //       ),
      //     ],
      //   ),
      // ),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            children: [
              SizedBox(height: 16,),
              Row(
                children: [
                  Shimmer.fromColors(
                    baseColor: Theme.of(context).brightness.name == "dark" ? Colors.black26: Colors.grey[300]!,
                    highlightColor: Theme.of(context).brightness.name == "dark" ? Colors.black12: Colors.grey[200]!,
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Theme.of(context).brightness.name == "dark" ? Colors.black: Colors.grey,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 14,
                  ),
                  Expanded(
                    child: Shimmer.fromColors(
                      baseColor: Theme.of(context).brightness.name == "dark" ? Colors.black26: Colors.grey[300]!,
                      highlightColor: Theme.of(context).brightness.name == "dark" ? Colors.black12: Colors.grey[200]!,
                      child: Container(
                        height: 24,
                        decoration: BoxDecoration(
                          color: Theme.of(context).brightness.name == "dark" ? Colors.black: Colors.grey,
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Shimmer.fromColors(
                baseColor: Theme.of(context).brightness.name == "dark" ? Colors.black26: Colors.grey[300]!,
                highlightColor: Theme.of(context).brightness.name == "dark" ? Colors.black12: Colors.grey[200]!,
                child: Container(
                  height: 205,
                  decoration: BoxDecoration(
                    color: Theme.of(context).brightness.name == "dark" ? Colors.black: Colors.grey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 25,),
              buildArticleTileShimmer(context),
              buildArticleTileShimmer(context),
              buildArticleTileShimmer(context),
              buildArticleTileShimmer(context),
              buildArticleTileShimmer(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildArticleTileShimmer(BuildContext context) => Container(
    child: Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        children: [
          Shimmer.fromColors(
            baseColor: Theme.of(context).brightness.name == "dark" ? Colors.black26: Colors.grey[300]!,
            highlightColor: Theme.of(context).brightness.name == "dark" ? Colors.black12: Colors.grey[200]!,
            child: Container(
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                color: Theme.of(context).brightness.name == "dark" ? Colors.black: Colors.grey,
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            height: 70,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Shimmer.fromColors(
                  baseColor: Theme.of(context).brightness.name == "dark" ? Colors.black26: Colors.grey[300]!,
                  highlightColor: Theme.of(context).brightness.name == "dark" ? Colors.black12: Colors.grey[200]!,
                  child: Container(
                    height: 8,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Theme.of(context).brightness.name == "dark" ? Colors.black: Colors.grey,
                      borderRadius: BorderRadius.circular(2.5),
                    ),
                  ),
                ),
                Shimmer.fromColors(
                  baseColor: Theme.of(context).brightness.name == "dark" ? Colors.black26: Colors.grey[300]!,
                  highlightColor: Theme.of(context).brightness.name == "dark" ? Colors.black12: Colors.grey[200]!,
                  child: Container(
                    height: 11,
                    width: 280,
                    decoration: BoxDecoration(
                      color: Theme.of(context).brightness.name == "dark" ? Colors.black: Colors.grey,
                      borderRadius: BorderRadius.circular(3),
                    ),
                  ),
                ),
                Shimmer.fromColors(
                  baseColor: Theme.of(context).brightness.name == "dark" ? Colors.black26: Colors.grey[300]!,
                  highlightColor: Theme.of(context).brightness.name == "dark" ? Colors.black12: Colors.grey[200]!,
                  child: Container(
                    height: 11,
                    width: 280,
                    decoration: BoxDecoration(
                      color: Theme.of(context).brightness.name == "dark" ? Colors.black: Colors.grey,
                      borderRadius: BorderRadius.circular(3),
                    ),
                  ),
                ),
                SizedBox(
                  width: 280,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Shimmer.fromColors(
                        baseColor: Theme.of(context).brightness.name == "dark" ? Colors.black26: Colors.grey[300]!,
                        highlightColor: Theme.of(context).brightness.name == "dark" ? Colors.black12: Colors.grey[200]!,
                        child: Container(
                          height: 8,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Theme.of(context).brightness.name == "dark" ? Colors.black: Colors.grey,
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                      ),
                      Shimmer.fromColors(
                        baseColor: Theme.of(context).brightness.name == "dark" ? Colors.black26: Colors.grey[300]!,
                        highlightColor: Theme.of(context).brightness.name == "dark" ? Colors.black12: Colors.grey[200]!,
                        child: Container(
                          height: 8,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Theme.of(context).brightness.name == "dark" ? Colors.black: Colors.grey,
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
