import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:mondaymorning/src/themes/colors.dart';

class TermsAndPoliciesSchema{
  String Title;
  List<String> paragraphs;

  TermsAndPoliciesSchema(@required this.Title, @required this.paragraphs);
}

class CategoriesSchema{
  String id;
  String name;

  CategoriesSchema(@required this.id, @required this.name);
}

Map<String, List<TermsAndPoliciesSchema>> termsOfPolicy = {
  'termsOfServices' : [
    TermsAndPoliciesSchema('Introduction', [
      "Welcome to Monday Morning (“Company”, “we”, “our”, “us”)!",
      "These Terms of Service (“Terms”, “Terms of Service”) govern your use of our website located at mondaymorning.nitrkl.ac.in (together or individually “Service”) operated by Monday Morning.",
      "Our Privacy Policy also governs your use of our Service and explains how we collect, safeguard and disclose information that results from your use of our web pages.",
      "Your agreement with us includes these Terms and our Privacy Policy (“Agreements”). You acknowledge that you have read and understood Agreements, and agree to be bound of them.",
      "If you do not agree with (or cannot comply with) Agreements, then you may not use the Service, but please let us know by emailing at tech.mondaymorning@gmail.com so we can try to find a solution. These Terms apply to all visitors, users and others who wish to access or use Service.",
    ]
    ),
    TermsAndPoliciesSchema('Communications', [
      'By using our Service, you agree to subscribe to newsletters, marketing or promotional materials and other information we may send. However, you may opt out of receiving any, or all, of these communications from us by following the unsubscribe link or by emailing at tech.mondaymorning@gmail.com.'
    ]),
    TermsAndPoliciesSchema('Contests, Sweepstakes and Promotions', [
      'Any contests, sweepstakes or other promotions (collectively, “Promotions”) made available through Service may be governed by rules that are separate from these Terms of Service. If you participate in any Promotions, please review the applicable rules as well as our Privacy Policy. If the rules for a Promotion conflict with these Terms of Service, Promotion rules will apply.'
    ]),
    TermsAndPoliciesSchema('Content', [
      'Our Service allows you to post, link, store, share and otherwise make available certain information, text, graphics, videos, or other material (“Content”). You are responsible for Content that you post on or through Service, including its legality, reliability, and appropriateness.',
      'By posting Content on or through Service, You represent and warrant that: (i) Content is yours (you own it) and/or you have the right to use it and the right to grant us the rights and licence as provided in these Terms, and (ii) that the posting of your Content on or through Service does not violate the privacy rights, publicity rights, copyrights, contract rights or any other rights of any person or entity. We reserve the right to terminate the account of anyone found to be infringing on a copyright.',
      'You retain any and all of your rights to any Content you submit, post or display on or through Service and you are responsible for protecting those rights. We take no responsibility and assume no liability for Content you or any third party posts on or through Service. However, by posting Content using Service you grant us the right and licence to use, modify, publicly perform, publicly display, reproduce, and distribute such Content on and through Service. You agree that this licence includes the right for us to make your Content available to other users of Service, who may also use your Content subject to these Terms.',
      'Monday Morning has the right but not the obligation to monitor and edit all Content provided by users.',
      'In addition, Content found on or through this Service are the property of Monday Morning or used with permission. You may not distribute, modify, transmit, reuse, download, repost, copy, or use said Content, whether in whole or in part, for commercial purposes or for personal gain, without express advance written permission from us.',
    ]),
    TermsAndPoliciesSchema('Prohibited Uses', [
      'You may use Service only for lawful purposes and in accordance with Terms. You agree not to use Service:',
    ]),
  ],
  'privacyPolicy' : [
    TermsAndPoliciesSchema('Introduction', [
      'Welcome to Monday Morning.',
      'Monday Morning (“us”, “we”, or “our”) operates mondaymorning.nitrkl.ac.in (hereinafter referred to as “Service”).',
      'Our Privacy Policy governs your visit to mondaymorning.nitrkl.ac.in, and explains how we collect, safeguard and disclose information that results from your use of our Service.',
    ]),
    TermsAndPoliciesSchema('Definitions', [
      'SERVICE means the mondaymorning.nitrkl.ac.in website operated by Monday Morning.',
      'PERSONAL DATA means data about a living individual who can be identified from those data (or from those and other information either in our possession or likely to come into our possession).',
      'USAGE DATA is data collected automatically either generated by the use of Service or from Service infrastructure itself (for example, the duration of a page visit).',
    ]),
    TermsAndPoliciesSchema('Information Collection and Use', [
      'We collect several different types of information for various purposes to provide and improve our Service to you.'
    ]),
  ]
};

class TermsAndPoliciesPage extends StatefulWidget {
  const TermsAndPoliciesPage({Key? key}) : super(key: key);

  @override
  State<TermsAndPoliciesPage> createState() => _TermsAndPoliciesPageState();
}

class _TermsAndPoliciesPageState extends State<TermsAndPoliciesPage> {

  List<CategoriesSchema> categories = [
    CategoriesSchema('termsOfServices', 'Terms of Service'),
    CategoriesSchema('privacyPolicy', 'Privacy Policy'),
  ];

  String currentId = 'termsOfServices';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Terms and Policies'),
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 40,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    child: Center(
                      child: TextButton(
                        style: ButtonStyle(
                          overlayColor: MaterialStateColor.resolveWith((states) => Colors.transparent),
                        ),
                        onPressed: () {
                          setState(() {
                            currentId = categories[index].id;
                          });
                        },
                        child: Text(categories[index].name,
                          style:  categories[index].id == currentId ? TextStyle(fontSize: 18, color: Theme.of(context).primaryColor) :  TextStyle(fontSize: 18, color: AppColors.kGrey70),
                        ),
                      ),
                    ),
                  );
                }
            ),
          ),
          SizedBox(height: 10,),
          Expanded(
            child: Container(
              // height: MediaQuery.of(context).size.height*0.75,
              margin: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 10.0),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(5)),
                border: Border.all(color: AppColors.kGrey50),
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                  ),
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  padding: EdgeInsets.all(5.0),
                  child: ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: termsOfPolicy[currentId]!.length,
                      separatorBuilder: (BuildContext context, int index){
                        return SizedBox(
                          height: 20,
                        );
                      },
                      itemBuilder: (BuildContext context, int index){
                        return Container(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                if(termsOfPolicy[currentId]![index].Title != 'Introduction')
                                  Text(termsOfPolicy[currentId]![index].Title,
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),

                                SizedBox(
                                  height: 10,
                                ),

                                ListView.separated(
                                    shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                    itemCount: termsOfPolicy[currentId]![index].paragraphs.length,
                                    itemBuilder: (BuildContext context, int ind){
                                      return Text(termsOfPolicy[currentId]![index].paragraphs.elementAt(ind),
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      );
                                    },
                                    separatorBuilder: (BuildContext context, int index){
                                      return SizedBox(
                                        height: 10.0,
                                      );
                                    }
                                  )
                              ],
                            ),
                          ),
                        );
                      }
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

