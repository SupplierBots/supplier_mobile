import 'package:auto_route/auto_route_annotations.dart';
import 'package:supplier_mobile/presentation/auth/auth_page.dart';
import 'package:supplier_mobile/presentation/dashboard/dashboard_page.dart';
import 'package:supplier_mobile/presentation/gmail/gmail_page.dart';
import 'package:supplier_mobile/presentation/help/help_page.dart';
import 'package:supplier_mobile/presentation/profiles/profiles_page.dart';
import 'package:supplier_mobile/presentation/runner/runner_page.dart';
import 'package:supplier_mobile/presentation/settings/settings_page.dart';
import 'package:supplier_mobile/presentation/splash/splash_page.dart';
import 'package:supplier_mobile/presentation/tasks/tasks_page.dart';

@CustomAutoRouter(
  generateNavigationHelperExtension: true,
  routes: <AutoRoute>[
    CustomRoute<SplashPage>(page: SplashPage, initial: true),
    CustomRoute<AuthPage>(page: AuthPage),
    CustomRoute<DashboardPage>(page: DashboardPage),
    CustomRoute<TasksPage>(page: TasksPage),
    CustomRoute<RunnerPage>(page: RunnerPage),
    CustomRoute<ProfilesPage>(page: ProfilesPage),
    CustomRoute<SettingsPage>(page: SettingsPage),
    CustomRoute<HelpPage>(page: HelpPage),
    CustomRoute<GmailPage>(page: GmailPage),
  ],
)
class $Router {}
