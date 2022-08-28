import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MapCards extends StatelessWidget {
  const MapCards({Key? key}) : super(key: key);

  Future<void> _launchUrl(String url) async{
    if (await canLaunch(url))
      await launch(url);
    else
      throw "Could not launch $url";
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Material(
            elevation: 5,
            borderRadius: BorderRadius.circular(8),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "We are based at:",
                    style: TextStyle(
                      fontSize: 20,
                      letterSpacing: 0.4,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Student Activity Center",
                            style: TextStyle(fontSize: 16, letterSpacing: 0.3),
                          ),
                          SizedBox(height: 5),
                          Text("NIT Rourkela",
                            style: TextStyle(fontSize: 16, letterSpacing: 0.3),
                          ),
                          SizedBox(height: 5),
                          Text("Sector-1, Rourkela",
                            style: TextStyle(fontSize: 16, letterSpacing: 0.3),
                          ),
                          SizedBox(height: 5),
                          Text("Odisha, India",
                            style: TextStyle(fontSize: 16, letterSpacing: 0.3),
                          ),
                          SizedBox(height: 5),
                          Text("PIN: 769008",
                            style: TextStyle(fontSize: 16, letterSpacing: 0.3),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: (){
                          _launchUrl("https://goo.gl/maps/L77bRS9fZBT8hdQP9");
                        },
                        child: Column(
                          children: [
                            Material(
                              elevation: 4,
                              borderRadius: BorderRadius.circular(7),
                              clipBehavior:  Clip.antiAliasWithSaveLayer,
                              child: Container(
                                height: 110,
                                width: 114,
                                child: Image.asset("assets/images/MapSac.png", fit: BoxFit.cover,),
                              ),
                            ),
                            SizedBox(height: 7),
                            Text(
                              "See on Maps",
                              style: TextStyle(
                                fontSize: 14,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
