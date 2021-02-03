// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../auth/auth_page.dart';
import '../dashboard/dashboard_page.dart';
import '../help/help_page.dart';
import '../profiles/profiles_page.dart';
import '../settings/settings_page.dart';
import '../splash/splash_page.dart';
import '../tasks/tasks_page.dart';

class Routes {
  static const String splashPage = '/';
  static const String authPage = '/auth-page';
  static const String dashboardPage = '/dashboard-page';
  static const String tasksPage = '/tasks-page';
  static const String profilesPage = '/profiles-page';
  static const String settingsPage = '/settings-page';
  static const String helpPage = '/help-page';
  static const all = <String>{
    splashPage,
    authPage,
    dashboardPage,
    tasksPage,
    profilesPage,
    settingsPage,
    helpPage,
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
    RouteDef(Routes.profilesPage, page: ProfilesPage),
    RouteDef(Routes.settingsPage, page: SettingsPage),
    RouteDef(Routes.helpPage, page: HelpPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    SplashPage: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => SplashPage(),
        settings: data,
      );
    },
    AuthPage: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => AuthPage(),
        settings: data,
      );
    },
    DashboardPage: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            DashboardPage(),
        settings: data,
      );
    },
    TasksPage: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => TasksPage(),
        settings: data,
      );
    },
    ProfilesPage: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => ProfilesPage(),
        settings: data,
      );
    },
    SettingsPage: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => SettingsPage(),
        settings: data,
      );
    },
    HelpPage: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => HelpPage(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension RouterExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushSplashPage() => push<dynamic>(Routes.splashPage);

  Future<dynamic> pushAuthPage() => push<dynamic>(Routes.authPage);

  Future<dynamic> pushDashboardPage() => push<dynamic>(Routes.dashboardPage);

  Future<dynamic> pushTasksPage() => push<dynamic>(Routes.tasksPage);

  Future<dynamic> pushProfilesPage() => push<dynamic>(Routes.profilesPage);

  Future<dynamic> pushSettingsPage() => push<dynamic>(Routes.settingsPage);

  Future<dynamic> pushHelpPage() => push<dynamic>(Routes.helpPage);
}
