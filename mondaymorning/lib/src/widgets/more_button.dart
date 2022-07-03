import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:mondaymorning/src/services/navigation/router.gr.dart';
import 'package:flutter/material.dart';

///MoreButton: More Menue Buttons
class MoreButton extends StatelessWidget {
  final String feature;
  final IconData icon;
  const MoreButton({Key? key, required this.feature, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){context.router.push(ComingSoonRoute(),);},
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 3),
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Color(0xA6999999), width: 2)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SizedBox(width: 3),
                Icon(icon, size: 27),
                SizedBox(width: 15),
                Text(
                  feature,
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            Icon(Icons.arrow_forward_ios_outlined),
          ],
        ),
      ),
    );
  }
}
