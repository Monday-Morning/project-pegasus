import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

/// Contains the box names that will be used for LocalDb
enum LocalDbBoxes {
  /// User data box for user data like 'id', 'name', 'email', etc.
  userData,
}

/// A service dedicated to store the local app data in [Hive].
/// Use `LocalDb.getValue()` for retrieving the data from the database.
/// Use `LocalDb.setValue()` to write or update the data in the database.
/// Use `LocalDb.deleteValue()` to delete data in the database.
@singleton
class LocalDb {
  /// Instance of [Hive]
  HiveInterface hiveInterface;

  /// Constructor for [LocalDb]. Takes an optional parameter [hiveInterface] to
  /// be used only during tests.
  LocalDb({this.hiveInterface}) {
    hiveInterface ??= Hive;
  }

  /// Initialises the Hive Database
  Future initiateLocalDb() async {
    await hiveInterface.initFlutter();
  }

  /// Opens the box named box
  Future<void> openBox(String box) async {
    await hiveInterface.openBox(box);
  }

  /// Closes the box named box
  Future<void> closeBox(String box) async {
    await hiveInterface.box(box).close();
  }

  /// Returns the value for the key from a box named boxName
  dynamic getValue(String boxName, String key) {
    assert(hiveInterface.isBoxOpen(boxName));

    final box = hiveInterface.box(boxName);

    return box.get(key);
  }

  /// Inserts a key-value pair into the box named boxname
  void setValue(String boxName, String key, String value) {
    assert(hiveInterface.isBoxOpen(boxName));

    final box = hiveInterface.box(boxName);

    box.put(key, value);
  }

  /// Deletes the key-value pair from the box named boxName
  void deleteValue(String boxName, String key) {
    assert(hiveInterface.isBoxOpen(boxName));

    final box = hiveInterface.box(boxName);

    box.delete(key);
  }
}
