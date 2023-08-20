import 'package:hive_flutter/hive_flutter.dart';

class LocalStorage {
  Box? storage;

  initFlutter() {
    Hive.initFlutter();
    Hive.openBox('portfolio');
  }

  bool isNewUser() => storage!.containsKey('guest');

  addUser() => storage!.put('guest', true);
}
