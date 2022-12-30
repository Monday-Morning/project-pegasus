import 'package:flutter/material.dart';
import 'package:mondaymorning/src/services/themes/size_config.dart';

class ComingSoonScreen extends StatelessWidget {
  const ComingSoonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: EdgeInsets.symmetric(
            vertical: SizeConfig.safeBlockVertical! * 15,
          ),
          padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.safeBlockHorizontal! * 5,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Page under development',
                    textAlign: TextAlign.left,
                    style: Theme.of(context).textTheme.headline1?.copyWith(
                          height: SizeConfig.safeBlockVertical! * 0.2,
                        ),
                  ),
                  Text(
                    'We are working on this page. Something exciting awaits.',
                    textAlign: TextAlign.left,
                    style: Theme.of(context).textTheme.caption?.copyWith(
                          fontSize: 14,
                        ),
                  ),
                ],
              ),
              SizedBox(
                height: SizeConfig.safeBlockVertical! * 50,
                child: Image.asset(
                  'assets/images/${Theme.of(context).brightness.name}/coming_soon.png',
                ),
              ),
              Column(
                children: [
                  Text(
                    'Connect with us on',
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
