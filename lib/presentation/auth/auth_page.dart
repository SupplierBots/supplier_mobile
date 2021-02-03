import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supplier_mobile/inject.dart';
import 'package:supplier_mobile/presentation/auth/widgets/forms_container.dart';
import 'package:supplier_mobile/presentation/core/constants/scaling.dart';
import 'package:supplier_mobile/application/auth/auth_forms/auth_forms_bloc.dart';

class AuthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.topCenter,
        child: FractionallySizedBox(
          widthFactor: kMainContentScreenWidth,
          child: BlocProvider(
            create: (context) => getIt<AuthFormsBloc>(),
            child: const FormsContainer(),
          ),
        ),
      ),
    );
  }
}
