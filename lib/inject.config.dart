// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'application/auth/auth_bloc.dart';
import 'application/auth/auth_forms/auth_forms_bloc.dart';
import 'domain/auth/auth_repository.dart';
import 'application/dashboard/dashboard_bloc.dart';
import 'domain/dashboard/dashboard_repository.dart';
import 'infrastructure/auth/firebase_auth_repository.dart';
import 'infrastructure/dashboard/firebase_dashboard_repository.dart';
import 'infrastructure/core/firebase_injectable_module.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<FirebaseAuth>(() => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<FirebaseFirestore>(() => firebaseInjectableModule.firestore);
  gh.lazySingleton<FirebaseFunctions>(
      () => firebaseInjectableModule.cloudFunctions);
  gh.lazySingleton<AuthRepository>(() =>
      FirebaseAuthRepository(get<FirebaseAuth>(), get<FirebaseFunctions>()));
  gh.lazySingleton<DashboardRepository>(
      () => FirebaseDashboardRepository(get<FirebaseFirestore>()));
  gh.factory<AuthBloc>(() => AuthBloc(get<AuthRepository>()));
  gh.factory<AuthFormsBloc>(() => AuthFormsBloc(get<AuthRepository>()));
  gh.factory<DashboardBloc>(() => DashboardBloc(get<DashboardRepository>()));
  return get;
}

class _$FirebaseInjectableModule extends FirebaseInjectableModule {}
