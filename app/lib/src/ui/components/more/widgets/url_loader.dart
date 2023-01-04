import 'dart:async';
import 'package:url_launcher/url_launcher.dart';

class URLLauncher {
  static Future<void> uriLauncher(Uri url) async {
    if (await launchUrl(url, mode: LaunchMode.externalApplication)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    } else {
      throw ArgumentError('Could not launch $url');
    }
  }
}
