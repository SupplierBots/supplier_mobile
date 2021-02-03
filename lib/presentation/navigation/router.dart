import 'package:auto_route/auto_route_annotations.dart';
import 'package:supplier_mobile/presentation/auth/auth_page.dart';
import 'package:supplier_mobile/presentation/dashboard/dashboard_page.dart';
import 'package:supplier_mobile/presentation/help/help_page.dart';
import 'package:supplier_mobile/presentation/profiles/profiles_page.dart';
import 'package:supplier_mobile/presentation/settings/settings_page.dart';
import 'package:supplier_mobile/presentation/splash/splash_page.dart';
import 'package:supplier_mobile/presentation/tasks/tasks_page.dart';

@CustomAutoRouter(
  generateNavigationHelperExtension: true,
  routes: <AutoRoute>[
    CustomRoute(page: SplashPage, initial: true),
    CustomRoute(page: AuthPage),
    CustomRoute(page: DashboardPage),
    CustomRoute(page: TasksPage),
    CustomRoute(page: ProfilesPage),
    CustomRoute(page: SettingsPage),
    CustomRoute(page: HelpPage),
  ],
)
class $Router {}
