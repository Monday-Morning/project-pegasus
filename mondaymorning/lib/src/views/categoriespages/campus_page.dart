import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mondaymorning/src/widgets/scrollProperty/scrollproperty.dart';
import 'package:webview_flutter/webview_flutter.dart';

/// Campus Page inside the Categories Page.
class CampusPage extends StatefulWidget {
  @override
  State<CampusPage> createState() => _CampusPageState();
}

class _CampusPageState extends State<CampusPage> {
  final Completer<WebViewController> _controller = Completer<WebViewController>();

  late WebViewController _webViewController;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async{
        if(await _webViewController.canGoBack()){
          _webViewController.goBack();
          return false;
        } else {
          return true;
        }
      },
      child: Scaffold(
        body: ScrollConfiguration(
          behavior: MyBehavior(),
          child: WebView(
            javascriptMode: JavascriptMode.unrestricted,
            initialUrl: 'https://mondaymorning.nitrkl.ac.in/campus',
            onWebViewCreated: (WebViewController webViewController) {
              _webViewController = webViewController;
              _controller.complete(webViewController);
            },
            onPageStarted: (String url) {
              print('Page started loading: $url');
            },

            onPageFinished: (String url) {
              print('Page finished loading: $url');

              // Removes header and footer from page
              _webViewController.evaluateJavascript("document.getElementsByClassName('jss2')[0].style.display='none';"
                  +"document.getElementsByClassName('PrivateSwipeArea-root css-n2n0ek')[0].style.display='none';"
                  +"document.getElementsByClassName('MuiContainer-root MuiContainer-maxWidthLg jss7 css-1qsxih2')[0].style.display='none';"
                  +"document.getElementsByClassName('jss59')[0].style.display='none';");
            },
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          ),
        ),
      ),
    );
  }
}