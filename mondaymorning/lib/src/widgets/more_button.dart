import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:mondaymorning/src/services/navigation/router.gr.dart';
import 'package:flutter/material.dart';

///MoreButton: More Menue Buttons
class MoreButton extends StatelessWidget {
  final String feature;
  final IconData icon;
  final void Function() onTileTap;
  const MoreButton({Key? key, required this.feature, required this.icon, required this.onTileTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTileTap,
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
                Container(
                  width: MediaQuery.of(context).size.width*0.62,
                  height: 23.5,
                  child: AutoSizeText(
                    feature,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
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
