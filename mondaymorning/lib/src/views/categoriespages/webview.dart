import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class CustomWebView extends StatefulWidget {
  const CustomWebView({Key? key}) : super(key: key);

  @override
  _CustomWebViewState createState() => _CustomWebViewState();
}

class _CustomWebViewState extends State<CustomWebView> {
  late WebViewController controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebView(
        javascriptMode: JavascriptMode.unrestricted,
        initialUrl: 'https://mondaymorning.nitrkl.ac.in/ddcwc',
        onWebViewCreated: (controller) {
          this.controller = controller;
        },
      ),
    );
  }
}
