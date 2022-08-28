import 'dart:async';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

class DdcwcPage extends StatefulWidget {
  @override
  State<DdcwcPage> createState() => _DdcwcPageState();
}

class _DdcwcPageState extends State<DdcwcPage> {
  late WebViewController controller;
  bool flag = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
               controller.evaluateJavascript("document.getElementsByTagName('header')[0].style.display='none'");
          },
        ),
      ),
      body: WebView(
        javascriptMode: JavascriptMode.unrestricted,
        initialUrl: 'https://mondaymorning.nitrkl.ac.in/ddcwc',
        onWebViewCreated: (controller) {
          this.controller = controller;
        },
        onPageStarted: (url){
          if(url != "https://mondaymorning.nitrkl.ac.in/ddcwc"){
            setState(() {
              flag = true;
            });
          }
        },
      ),
    );
  }
}
