import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:portfolio/core/data/network.dart';
import 'package:portfolio/core/service/auth.dart';
import 'package:portfolio/core/data/local_storage.dart';
import 'package:portfolio/firebase_options.dart';
import 'package:portfolio/view_model/login/login.dart';

final locator = GetIt.instance;

setUpDependencies() async {
  // BackgroundIsolateBinaryMessenger.ensureInitialized(token);
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await Hive.initFlutter();
  await dotenv.load(fileName: 'lib/.env');
  configureDIo();
  locator.registerLazySingleton(() => AppAuthenticationService());
  locator.registerLazySingleton(() => LocalStorage());
  locator.registerLazySingleton(() => LoginState());
  locator<LocalStorage>().initFlutter();
}
