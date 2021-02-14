import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supplier_mobile/application/auth/auth_bloc.dart';
import 'package:supplier_mobile/application/profiles/profiles_cubit.dart';
import 'package:supplier_mobile/application/tasks/tasks_bloc.dart';
import 'package:supplier_mobile/inject.dart';
import 'package:supplier_mobile/presentation/core/constants/colors.dart';
import 'package:supplier_mobile/presentation/navigation/router.gr.dart'
    as app_router;

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
        ),
        BlocProvider(
          create: (context) => ProfilesCubit(),
        ),
        BlocProvider(
          create: (context) => TasksBloc(),
        )
      ],
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          FocusManager.instance.primaryFocus.unfocus();
        },
        child: MaterialApp(
          title: 'Supplier Mobile',
          builder: ExtendedNavigator.builder(router: app_router.Router()),
          theme: ThemeData(
            scaffoldBackgroundColor: kBackgroundColor,
            fontFamily: 'Lato',
            visualDensity: VisualDensity.adaptivePlatformDensity,
            backgroundColor: kBackgroundColor,
            accentColor: kVioletColor,
            textSelectionColor: kPinkColor,
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
          ),
        ),
      ),
    );
  }
}
