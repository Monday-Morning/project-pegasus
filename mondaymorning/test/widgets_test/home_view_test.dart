import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mondaymorning/generated/locale_keys.g.dart';
import 'package:mondaymorning/ui/views/home/home_view.dart';

import '../setup/test_helpers.dart';

void main() {
  setUp(() async {
    await loadAssets();
  });
  testWidgets(
    "Renders the title in the text widget of the homeView",
    (WidgetTester tester) async {
      await tester.pumpWidget(wrapperWidget(child: HomeView()));
      await tester.pumpAndSettle();
      expect(find.text(LocaleKeys.title.tr()), findsOneWidget);
    },
  );
}
