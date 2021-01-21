import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:supplier_mobile/features/authentication/authentication_provider.dart';
import 'package:supplier_mobile/root.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(SupplierMobile());
}

class SupplierMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AuthenticationProvider>(
      create: (_) => AuthenticationProvider(),
      child: Root(),
    );
  }
}
