import 'package:flutter/material.dart';
// import 'package:mondaymorning/src/services/themes/rem_size.dart';
// import 'package:mondaymorning/src/services/themes/rem_space.dart';
// import 'package:mondaymorning/src/services/themes/size_config.dart';
// import 'package:mondaymorning/src/ui/components/loading/shimmer_widget.dart';
import 'package:shimmer/shimmer.dart';

class FullLoadingScreen extends StatelessWidget {
  const FullLoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness.name == "dark";
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
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
          padding: const EdgeInsets.only(top: 14, bottom: 10, left: 8, right: 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Shimmer.fromColors(
                    baseColor: isDark ? Colors.black26: Colors.grey[300]!,
                    highlightColor: isDark ? Colors.black12: Colors.grey[200]!,
                    child: Container(
                      height: 0.092*screenWidth,
                      width: 0.092*screenWidth,
                      decoration: BoxDecoration(
                        color: isDark ? Colors.black: Colors.grey,
                        borderRadius: BorderRadius.circular(0.08*screenWidth),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 0.02*screenHeight,
                  ),
                  Expanded(
                    child: Shimmer.fromColors(
                      baseColor: isDark ? Colors.black26: Colors.grey[300]!,
                      highlightColor: isDark ? Colors.black12: Colors.grey[200]!,
                      child: Container(
                        height: 0.0379*screenHeight,
                        decoration: BoxDecoration(
                          color: isDark ? Colors.black: Colors.grey,
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 0.01*screenHeight,),
              Shimmer.fromColors(
                baseColor: isDark ? Colors.black26: Colors.grey[300]!,
                highlightColor: isDark ? Colors.black12: Colors.grey[200]!,
                child: Container(
                  height: 0.265*screenHeight,
                  decoration: BoxDecoration(
                    color: isDark ? Colors.black: Colors.grey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 0.02*screenHeight,),
              buildArticleTileShimmer(context, isDark, screenHeight, screenWidth),
              buildArticleTileShimmer(context, isDark, screenHeight, screenWidth),
              buildArticleTileShimmer(context, isDark, screenHeight, screenWidth),
              buildArticleTileShimmer(context, isDark, screenHeight, screenWidth),
              buildArticleTileShimmer(context, isDark, screenHeight, screenWidth),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildArticleTileShimmer(BuildContext context, bool isDark, double height, double width) => Container(
    child: Padding(
      padding: EdgeInsets.only(top: 0.01*height),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Shimmer.fromColors(
            baseColor: isDark ? Colors.black26: Colors.grey[300]!,
            highlightColor: isDark ? Colors.black12: Colors.grey[200]!,
            child: Container(
              height: 0.106*height,
              width: 0.21*width,
              decoration: BoxDecoration(
                color: isDark ? Colors.black: Colors.grey,
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
          SizedBox(
            height: 0.097*height,
            width: 0.715*width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Shimmer.fromColors(
                  baseColor: isDark ? Colors.black26: Colors.grey[300]!,
                  highlightColor: isDark ? Colors.black12: Colors.grey[200]!,
                  child: Container(
                    height: 0.012*height,
                    width: 0.2*width,
                    decoration: BoxDecoration(
                      color: isDark ? Colors.black: Colors.grey,
                      borderRadius: BorderRadius.circular(2.3),
                    ),
                  ),
                ),
                Shimmer.fromColors(
                  baseColor: isDark ? Colors.black26: Colors.grey[300]!,
                  highlightColor: isDark ? Colors.black12: Colors.grey[200]!,
                  child: Container(
                    height: 0.0148*height,
                    width: 0.75*width,
                    decoration: BoxDecoration(
                      color: isDark ? Colors.black: Colors.grey,
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                ),
                Shimmer.fromColors(
                  baseColor: isDark ? Colors.black26: Colors.grey[300]!,
                  highlightColor: isDark ? Colors.black12: Colors.grey[200]!,
                  child: Container(
                    height: 0.0148*height,
                    width: 0.75*width,
                    decoration: BoxDecoration(
                      color: isDark ? Colors.black: Colors.grey,
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                ),
                SizedBox(
                  width: 0.75*width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Shimmer.fromColors(
                        baseColor: isDark ? Colors.black26: Colors.grey[300]!,
                        highlightColor: isDark ? Colors.black12: Colors.grey[200]!,
                        child: Container(
                          height: 0.012*height,
                          width: 0.24*width,
                          decoration: BoxDecoration(
                            color: isDark ? Colors.black: Colors.grey,
                            borderRadius: BorderRadius.circular(2.3),
                          ),
                        ),
                      ),
                      Shimmer.fromColors(
                        baseColor: isDark ? Colors.black26: Colors.grey[300]!,
                        highlightColor: isDark ? Colors.black12: Colors.grey[200]!,
                        child: Container(
                          height: 0.012*height,
                          width: 0.19*width,
                          decoration: BoxDecoration(
                            color: isDark ? Colors.black: Colors.grey,
                            borderRadius: BorderRadius.circular(2.3),
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
