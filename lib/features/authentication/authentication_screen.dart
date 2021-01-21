import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:supplier_mobile/constants/scaling.dart';
import 'package:supplier_mobile/features/authentication/authentication_provider.dart';
import 'package:supplier_mobile/features/authentication/widgets/login_form.dart';
import 'package:supplier_mobile/features/authentication/widgets/main_logo.dart';

class AuthenticationScreen extends StatelessWidget {
  static const String route = 'authentication';

  @override
  Widget build(BuildContext context) {
    final AuthenticationProvider auth =
        Provider.of<AuthenticationProvider>(context);

    return Scaffold(
      body: Align(
        alignment: Alignment.topCenter,
        child: FractionallySizedBox(
          widthFactor: kMainContentScreenWidth,
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 100,
              ),
              const MainLogo(),
              const SizedBox(
                height: 50,
              ),
              if (!auth.waitingForResponse)
                LoginForm()
              else
                Container(
                  margin: const EdgeInsets.only(top: 50),
                  child: const CircularProgressIndicator(),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
