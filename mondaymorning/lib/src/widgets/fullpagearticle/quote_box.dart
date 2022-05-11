import 'package:flutter/material.dart';

///QuoteBox: Quote Box for full article page view
class QuoteBox extends StatelessWidget {
  const QuoteBox({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 26,
        ),
        // SizedBox(width: 18),
        // VerticalDivider(
        //   width: 20,
        //   thickness: 10,
        //   color: Colors.blue,
        // ),
        // SizedBox(width: 10),
        Flexible(
          child: Container(
            margin: EdgeInsets.only(left: 2),
            padding: EdgeInsets.only(left: 12),
            decoration:  BoxDecoration(
              color: Theme.of(context).appBarTheme.backgroundColor,
              border:  Border(
                left: BorderSide(
                  color: Theme.of(context).primaryColor,
                  width: 3.0,
                ),
              ),
            ),
            child: Text(
                'Delay in the curriculum may seem enthralling at the moment but the clouds of uncertainty that it casts on the future of students and academics as a whole- is an extra-ordinary issue that has to be considered. However, walking abreast of the transformations, NIT Rourkela has tried to put its best foot forward in these rather questioning times. (Excerpt)',
            style: TextStyle(
              fontSize: 16,
              fontStyle: FontStyle.italic,
            ),
            ),
          ),
        ),
      ],
    );
  }
}
