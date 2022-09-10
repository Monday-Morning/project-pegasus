import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class CustomWebViewPage extends StatefulWidget {
  const CustomWebViewPage({Key? key, required this.url}) : super(key: key);
  final String url;

  @override
  _CustomWebViewPageState createState() => _CustomWebViewPageState();
}

class _CustomWebViewPageState extends State<CustomWebViewPage> {
  final Completer<WebViewController> _controller = Completer<WebViewController>();

  late WebViewController _webViewController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("This is New Page"),
      ),
      body: WebView(
        javascriptMode: JavascriptMode.unrestricted,
        initialUrl: widget.url,
        onWebViewCreated: (WebViewController webViewController) {
          _webViewController = webViewController;
          _controller.complete(webViewController);
        },
        onPageFinished: (String url) {
          print('Page finished loading: $url');

          // Removes header and footer from page
           _webViewController.evaluateJavascript("document.getElementsByClassName('jss2')[0].style.display='none'");
        },
      ),
    );
  }
}
