import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mondaymorning/src/widgets/scrollProperty/scrollproperty.dart';

class TermsAndPoliciesPage extends StatelessWidget {
  const TermsAndPoliciesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: ScrollConfiguration(
          behavior: MyBehavior(),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Terms and Policies",
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 6),
                      Container(
                        height: 4,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 20),
                Text(
                  "These terms of service (“Terms of Service”) govern your use of John Wiley & Sons, Inc. and its subsidiaries’ (“Wiley”) websites, services and applications (the “Services”). By using or accessing the Services, you agree to be bound by these Terms of Service, as updated from time to time in accordance with Section 12 below. There may be instances when we offer additional terms specific to a product, application or service. To the extent such additional terms conflict with these Terms of Service, the additional terms associated with the product, application or service, with respect to your use of the product, application or service, will prevail. References to “us,” “we,” and “our” mean John Wiley & Sons, Inc.",
                  style: GoogleFonts.poppins(
                    fontSize: 16.5,
                    height: 1.3,
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
