import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supplier_mobile/inject.dart';
import 'package:supplier_mobile/presentation/auth/widgets/forms_container.dart';
import 'package:supplier_mobile/presentation/core/constants/scaling.dart';
import 'package:supplier_mobile/application/auth/auth_forms/auth_forms_cubit.dart';

class AuthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          physics: const ClampingScrollPhysics(),
          children: [
            FractionallySizedBox(
              widthFactor: kMainContentScreenWidth,
              child: BlocProvider(
                create: (context) => getIt<AuthFormsCubit>(),
                child: const FormsContainer(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
