import 'package:flutter/material.dart';
import 'package:mondaymorning/src/api/models/squiggle/squiggle.dart';
import 'package:mondaymorning/src/services/themes/mm_colors.dart';

class CategoriesScreen extends StatelessWidget {
  final Squiggle squiggle;

  const CategoriesScreen({super.key, required this.squiggle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        elevation: 0,
        title: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Categories',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 2,
                  width: MediaQuery.of(context).size.width * 0.6,
                  margin: EdgeInsets.only(bottom: 6.0),
                  color: Theme.of(context).primaryColor,
                )
              ],
            ),
          ],
        ),
      ),
      body: Center(
        child: Text('Categories'),
      ),
    );
  }
}
