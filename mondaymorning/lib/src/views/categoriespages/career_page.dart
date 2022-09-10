import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mondaymorning/src/widgets/scrollProperty/scrollproperty.dart';
import 'package:webview_flutter/webview_flutter.dart';

class CareerPage extends StatefulWidget {
  @override
  State<CareerPage> createState() => _CareerPageState();
}

class _CareerPageState extends State<CareerPage> {
  final Completer<WebViewController> _controller = Completer<WebViewController>();

  late WebViewController _webViewController;
  String url = "https://mondaymorning.nitrkl.ac.in/career";
  final _key = UniqueKey();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async{
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
              key: _key,
              javascriptMode: JavascriptMode.unrestricted,
              initialUrl: url,
              onWebViewCreated: (WebViewController webViewController) {
                _webViewController = webViewController;
                _controller.complete(webViewController);
              },
              onPageFinished: (String url) {
                _webViewController.evaluateJavascript("document.getElementsByClassName('jss2')[0].style.display='none';"
                    +"document.getElementsByClassName('PrivateSwipeArea-root css-n2n0ek')[0].style.display='none';"
                    +"document.getElementsByClassName('MuiContainer-root MuiContainer-maxWidthLg jss7 css-1qsxih2')[0].style.display='none';"
                    +"document.getElementsByClassName('jss99')[0].style.display='none';");
              },
            ),
          ),
      ),
    );
  }
}