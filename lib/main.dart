import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:supplier_mobile/features/authentication/authentication_provider.dart';
import 'package:supplier_mobile/features/profiles/profile_model.dart';
import 'package:supplier_mobile/features/profiles/profiles_provider.dart';
import 'package:supplier_mobile/root.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> initializeHive() async {
  const FlutterSecureStorage secureStorage = FlutterSecureStorage();
  const String encryptionKey = 'encryption_key';
  final bool containsEncryptionKey =
      await secureStorage.containsKey(key: encryptionKey);

  if (!containsEncryptionKey) {
    final List<int> key = Hive.generateSecureKey();
    await secureStorage.write(
        key: 'encryption_key', value: base64UrlEncode(key));
  }

  final Uint8List decodedKey =
      base64Url.decode(await secureStorage.read(key: encryptionKey));

  await Hive.initFlutter();
  Hive.registerAdapter(ProfileAdapter());
  await Hive.openBox<Profile>(ProfilesProvider.boxId,
      encryptionCipher: HiveAesCipher(decodedKey));
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await initializeHive();
  runApp(
    ProviderScope(
      child: Root(),
    ),
  );
}
