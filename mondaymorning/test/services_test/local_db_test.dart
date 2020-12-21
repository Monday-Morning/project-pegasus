import 'dart:io';

import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hive/hive.dart';
import 'package:mondaymorning/services/local_db.dart';
import 'package:mockito/mockito.dart';

class MockHive extends Mock implements HiveInterface {}

class MockHiveBox extends Mock implements Box {}

void main() {
  LocalDb localDb;

  MockHive mockHive;

  MockHiveBox mockHiveBox;

  setUpAll(() async {
    mockHive = MockHive();
    localDb = LocalDb(hiveInterface: mockHive);
    mockHiveBox = MockHiveBox();
    await localDb.initiateLocalDb();
  });
  group("LocalDb - ", () {
    test("Opening the box", () async {
      when(mockHive.openBox(any)).thenAnswer((_) async => mockHiveBox);
      when(mockHive.box(any)).thenAnswer((_) => mockHiveBox);

      await localDb.openBox('boxName');

      verify(mockHive.openBox('boxName'));
    });

    test("Closing the box ", () async {
      when(mockHive.openBox(any)).thenAnswer((_) async => mockHiveBox);
      when(mockHive.box(any)).thenAnswer((_) => mockHiveBox);

      await localDb.openBox('boxName');

      await localDb.closeBox('boxName');

      final box = mockHive.box('name');

      verify(box.close());
    });
    test("verify initialization and get assertion error", () async {
      expect(
          () => localDb.getValue('boxName', 'pegasus'), throwsAssertionError);
    });

    test("getting a value", () async {
      when(mockHive.box(any)).thenAnswer((_) => mockHiveBox);
      when(mockHiveBox.get(any)).thenReturn('value');
      when(mockHive.isBoxOpen(any)).thenReturn(true);

      await localDb.getValue('boxName', 'key');

      verify(mockHiveBox.get('key'));
    });

    test("setting a value", () async {
      when(mockHive.box(any)).thenAnswer((_) => mockHiveBox);
      when(mockHiveBox.put(any, any)).thenAnswer((_) async {});
      when(mockHive.isBoxOpen(any)).thenReturn(true);

      await localDb.setValue('boxName', 'key', 'value');

      verify(mockHiveBox.put('key', 'value'));
    });

    test("Deleting a value", () async {
      when(mockHive.box(any)).thenAnswer((_) => mockHiveBox);
      when(mockHiveBox.delete(any)).thenAnswer((_) async {});
      when(mockHive.isBoxOpen(any)).thenReturn(true);

      localDb.deleteValue('boxName', 'key');

      verify(mockHiveBox.delete('key'));
    });
  });
}
