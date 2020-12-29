import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mondaymorning/generated/codegen_loader.g.dart';
import 'package:easy_localization/src/localization.dart';

Widget wrapperWidget({Widget child}) => MaterialApp(
      home: child,
    );

Future<void> loadAssets() async {
  final r = Resource(
      locale: const Locale('en'),
      path: 'path',
      useOnlyLangCode: true,
      assetLoader: const CodegenLoader());
  await r.loadTranslations();
  Localization.load(const Locale('en'), translations: r.translations);
}
