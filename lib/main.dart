import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive/hive.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';
import 'package:supplier_mobile/inject.dart';
import 'package:supplier_mobile/presentation/app.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeStorage();
  configureDependencies(Environment.prod);
  await Firebase.initializeApp();
  runApp(App());
}

Future<void> initializeStorage() async {
  const secureStorage = FlutterSecureStorage();
  const secureStorageKey = 'encryptionKey';
  if (!await secureStorage.containsKey(key: secureStorageKey)) {
    await secureStorage.write(
      key: secureStorageKey,
      value: base64UrlEncode(Hive.generateSecureKey()),
    );
  }

  final encryptionKey =
      base64Url.decode(await secureStorage.read(key: secureStorageKey));

  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: await getApplicationDocumentsDirectory(),
    encryptionCipher: HydratedAesCipher(encryptionKey),
  );
}
