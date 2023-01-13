import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ArticleShimmerLoadingScreen extends StatelessWidget {
  const ArticleShimmerLoadingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness.name == "dark";
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 14, bottom: 10, left: 8, right: 8),
          child: Column(
            children: [
              Shimmer.fromColors(
                baseColor: isDark ? Colors.black26: Colors.grey[300]!,
                highlightColor: isDark ? Colors.black12: Colors.grey[200]!,
                child: Container(
                  height: 0.267*screenHeight,
                  decoration: BoxDecoration(
                    color: isDark ? Colors.black: Colors.grey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 0.026*screenHeight,),
              Shimmer.fromColors(
                baseColor: isDark ? Colors.black26: Colors.grey[300]!,
                highlightColor: isDark ? Colors.black12: Colors.grey[200]!,
                child: Container(
                  height: 0.025*screenHeight,
                  decoration: BoxDecoration(
                    color: isDark ? Colors.black: Colors.grey,
                    borderRadius: BorderRadius.circular(3.6),
                  ),
                ),
              ),
              SizedBox(height: 0.011*screenHeight,),
              Shimmer.fromColors(
                baseColor: isDark ? Colors.black26: Colors.grey[300]!,
                highlightColor: isDark ? Colors.black12: Colors.grey[200]!,
                child: Container(
                  height: 0.025*screenHeight,
                  decoration: BoxDecoration(
                    color: isDark ? Colors.black: Colors.grey,
                    borderRadius: BorderRadius.circular(3.6),
                  ),
                ),
              ),
              SizedBox(height: 0.021*screenHeight,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ShimmerLoader(isDark,0.0195*screenHeight, 0.288*screenWidth, 3.6),
                  ShimmerLoader(isDark,0.0195*screenHeight, 0.18*screenWidth, 3.6),
                ],
              ),
              SizedBox(height: 0.0187*screenHeight,),
              Row(
                children: [
                  ShimmerLoader(isDark,0.02*screenHeight, 0.345*screenWidth, 3.6),
                ],
              ),
              SizedBox(height: 0.035*screenHeight,),
              Expanded(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ShimmerLoader(isDark,0.018*screenHeight, double.maxFinite, 3.38),
                      ShimmerLoader(isDark,0.018*screenHeight, double.maxFinite, 3.38),
                      ShimmerLoader(isDark,0.018*screenHeight, double.maxFinite, 3.38),
                      ShimmerLoader(isDark,0.018*screenHeight, double.maxFinite, 3.38),
                      ShimmerLoader(isDark,0.018*screenHeight, double.maxFinite, 3.38),
                      ShimmerLoader(isDark,0.018*screenHeight, double.maxFinite, 3.38),
                      ShimmerLoader(isDark,0.018*screenHeight, double.maxFinite, 3.38),
                      ShimmerLoader(isDark,0.018*screenHeight, double.maxFinite, 3.38),
                      ShimmerLoader(isDark,0.018*screenHeight, double.maxFinite, 3.38),
                      ShimmerLoader(isDark,0.018*screenHeight, double.maxFinite, 3.38),
                      ShimmerLoader(isDark,0.018*screenHeight, double.maxFinite, 3.38),
                      ShimmerLoader(isDark,0.018*screenHeight, double.maxFinite, 3.38),
                      ShimmerLoader(isDark,0.018*screenHeight, double.maxFinite, 3.38),
                      ShimmerLoader(isDark,0.018*screenHeight, double.maxFinite, 3.38),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget ShimmerLoader(bool isDark, double height, double width, double radius) => Shimmer.fromColors(
    baseColor: isDark ? Colors.black26: Colors.grey[300]!,
    highlightColor: isDark ? Colors.black12: Colors.grey[200]!,
    child: Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: isDark ? Colors.black: Colors.grey,
        borderRadius: BorderRadius.circular(radius),
      ),
    ),
  );
}
