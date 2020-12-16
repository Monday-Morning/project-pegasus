import 'package:flutter_test/flutter_test.dart';
import 'package:hive/hive.dart';
import 'package:mondaymorning/services/local_db.dart';

void main() {
  LocalDb localDb;

  setUpAll(() async {
    localDb = LocalDb();
    await localDb.initiateLocalDb();
  });
  group("LocalDb - ", () {
    test("Opening the box", () async {
      await localDb.openBox(LocalDbBoxes.userData.toString());

      expect(Hive.isBoxOpen(LocalDbBoxes.userData.toString()), true);
    });

    test("Closing the box ", () async {
      await localDb.openBox(LocalDbBoxes.userData.toString());

      await localDb.closeBox(LocalDbBoxes.userData.toString());

      expect(Hive.isBoxOpen(LocalDbBoxes.userData.toString()), false);
    });
    test("verify initialization and get assertion error", () async {
      expect(
          () => localDb.getValue(LocalDbBoxes.userData.toString(), 'pegasus'),
          throwsAssertionError);
    });

    test("setting a value", () async {
      await localDb.openBox(LocalDbBoxes.userData.toString());

      await localDb.setValue(
          LocalDbBoxes.userData.toString(), 'flutter', 'pegasus');

      expect(localDb.getValue(LocalDbBoxes.userData.toString(), 'flutter'),
          'pegasus');
    });

    test("Deleting a value", () async {
      await localDb.openBox(LocalDbBoxes.userData.toString());

      var box = Hive.box(LocalDbBoxes.userData.toString());

      localDb.setValue(LocalDbBoxes.userData.toString(), 'flutter', 'pegasus');

      localDb.deleteValue(LocalDbBoxes.userData.toString(), 'flutter');

      expect(box.containsKey('flutter'), false);
    });
  });
}
