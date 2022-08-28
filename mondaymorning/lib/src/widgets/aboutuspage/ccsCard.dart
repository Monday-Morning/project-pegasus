import 'package:flutter/material.dart';
import 'package:mondaymorning/src/widgets/aboutuspage/ccContacts.dart';

class CCsCard extends StatelessWidget {
  const CCsCard({Key? key}) : super(key: key);

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
                    "Chief Coordinators",
                    style: TextStyle(
                      fontSize: 20,
                      letterSpacing: 0.4,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 12),
                  CCContact(name: "Aditya Tripathi", number: "7873933061", link: "mailto:asutoshranjan@gmail.com"),
                  SizedBox(height: 5),
                  CCContact(name: "Saurav Sahoo", number: "7873933061", link: "mailto:asutoshranjan@gmail.com"),
                  SizedBox(height: 5),
                  CCContact(name: "Rashmi Ranjan", number: "7873933061", link: "mailto:asutoshranjan13@gmail.com"),
                  SizedBox(height: 5),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
