// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../auth/auth_page.dart';
import '../dashboard/dashboard_page.dart';
import '../google_login/google_login_page.dart';
import '../help/help_page.dart';
import '../profiles/profiles_page.dart';
import '../runner/runner_page.dart';
import '../settings/settings_page.dart';
import '../splash/splash_page.dart';
import '../tasks/tasks_page.dart';

class Routes {
  static const String splashPage = '/';
  static const String authPage = '/auth-page';
  static const String dashboardPage = '/dashboard-page';
  static const String tasksPage = '/tasks-page';
  static const String runnerPage = '/runner-page';
  static const String profilesPage = '/profiles-page';
  static const String settingsPage = '/settings-page';
  static const String helpPage = '/help-page';
  static const String googleLoginPage = '/google-login-page';
  static const all = <String>{
    splashPage,
    authPage,
    dashboardPage,
    tasksPage,
    runnerPage,
    profilesPage,
    settingsPage,
    helpPage,
    googleLoginPage,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashPage, page: SplashPage),
    RouteDef(Routes.authPage, page: AuthPage),
    RouteDef(Routes.dashboardPage, page: DashboardPage),
    RouteDef(Routes.tasksPage, page: TasksPage),
    RouteDef(Routes.runnerPage, page: RunnerPage),
    RouteDef(Routes.profilesPage, page: ProfilesPage),
    RouteDef(Routes.settingsPage, page: SettingsPage),
    RouteDef(Routes.helpPage, page: HelpPage),
    RouteDef(Routes.googleLoginPage, page: GoogleLoginPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    SplashPage: (data) {
      return PageRouteBuilder<SplashPage>(
        pageBuilder: (context, animation, secondaryAnimation) => SplashPage(),
        settings: data,
      );
    },
    AuthPage: (data) {
      return PageRouteBuilder<AuthPage>(
        pageBuilder: (context, animation, secondaryAnimation) => AuthPage(),
        settings: data,
      );
    },
    DashboardPage: (data) {
      return PageRouteBuilder<DashboardPage>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            DashboardPage(),
        settings: data,
      );
    },
    TasksPage: (data) {
      return PageRouteBuilder<TasksPage>(
        pageBuilder: (context, animation, secondaryAnimation) => TasksPage(),
        settings: data,
      );
    },
    RunnerPage: (data) {
      return PageRouteBuilder<RunnerPage>(
        pageBuilder: (context, animation, secondaryAnimation) => RunnerPage(),
        settings: data,
      );
    },
    ProfilesPage: (data) {
      return PageRouteBuilder<ProfilesPage>(
        pageBuilder: (context, animation, secondaryAnimation) => ProfilesPage(),
        settings: data,
      );
    },
    SettingsPage: (data) {
      return PageRouteBuilder<SettingsPage>(
        pageBuilder: (context, animation, secondaryAnimation) => SettingsPage(),
        settings: data,
      );
    },
    HelpPage: (data) {
      return PageRouteBuilder<HelpPage>(
        pageBuilder: (context, animation, secondaryAnimation) => HelpPage(),
        settings: data,
      );
    },
    GoogleLoginPage: (data) {
      return PageRouteBuilder<GoogleLoginPage>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            GoogleLoginPage(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension RouterExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<SplashPage> pushSplashPage() => push<SplashPage>(Routes.splashPage);

  Future<AuthPage> pushAuthPage() => push<AuthPage>(Routes.authPage);

  Future<DashboardPage> pushDashboardPage() =>
      push<DashboardPage>(Routes.dashboardPage);

  Future<TasksPage> pushTasksPage() => push<TasksPage>(Routes.tasksPage);

  Future<RunnerPage> pushRunnerPage() => push<RunnerPage>(Routes.runnerPage);

  Future<ProfilesPage> pushProfilesPage() =>
      push<ProfilesPage>(Routes.profilesPage);

  Future<SettingsPage> pushSettingsPage() =>
      push<SettingsPage>(Routes.settingsPage);

  Future<HelpPage> pushHelpPage() => push<HelpPage>(Routes.helpPage);

  Future<GoogleLoginPage> pushGoogleLoginPage() =>
      push<GoogleLoginPage>(Routes.googleLoginPage);
}
