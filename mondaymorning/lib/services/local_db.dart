import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

enum LocalDbBoxes {
  userData,
}

class LocalDb {
  Future initiateLocalDb() async {
    await Hive.initFlutter();
  }

  Future<void> openBox(String box) async {
    await Hive.openBox(box);
  }

  Future<void> closeBox(String box) async {
    await Hive.box(box).close();
  }

  dynamic getValue(String boxName, String key) {
    assert(Hive.isBoxOpen(boxName));

    var box = Hive.box(boxName);

    return box.get(key);
  }

  dynamic setValue(String boxName, String key, String value) {
    assert(Hive.isBoxOpen(boxName));

    var box = Hive.box(boxName);

    box.put(key, value);
  }

  dynamic deleteValue(String boxName, String key) {
    assert(Hive.isBoxOpen(boxName));

    var box = Hive.box(boxName);

    box.delete(key);
  }
}
