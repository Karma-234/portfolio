import 'package:hive_flutter/hive_flutter.dart';

class LocalStorage {
  Box? storage;

  initFlutter() {
    Hive.initFlutter();
    Hive.openBox('portfolio');
  }

  bool isOldUser() => storage!.containsKey('guest');

  addUser(String email) => storage?.put('guest', email);
  String? getUser() => storage?.get('guest');
}
