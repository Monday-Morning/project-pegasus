import 'package:flutter/material.dart';
import 'package:mondaymorning/src/services/themes/rem_size.dart';
import 'package:mondaymorning/src/services/themes/rem_space.dart';

class FullErrorScreen extends StatelessWidget {
  const FullErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(
                          'assets/images/${Theme.of(context).brightness.name}/mm_logo.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: SizedBox.square(
                    dimension:
                        Theme.of(context).extension<REMSize>()!.baseSize * 10,
                  ),
                ),
                SizedBox(
                    height: Theme.of(context).extension<REMSpace>()!.get(1)),
                Container(
                  margin: EdgeInsets.symmetric(
                      horizontal:
                          Theme.of(context).extension<REMSpace>()!.get(6)),
                  child: Image(
                    image: AssetImage(
                        'assets/images/${Theme.of(context).brightness.name}/monday_morning.png'),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                SizedBox(
                    height: Theme.of(context).extension<REMSpace>()!.get(2)),
                Text('Oops! There was an error in loading the app.',
                    style: Theme.of(context).textTheme.subtitle1),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
