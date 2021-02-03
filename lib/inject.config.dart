// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'application/auth/auth_bloc.dart';
import 'application/auth/auth_forms/auth_forms_bloc.dart';
import 'domain/auth/auth_repository.dart';
import 'infrastructure/auth/firebase_auth_repository.dart';
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
  gh.lazySingleton<AuthRepository>(
      () => FirebaseAuthRepository(get<FirebaseAuth>()));
  gh.factory<AuthBloc>(() => AuthBloc(get<AuthRepository>()));
  gh.factory<AuthFormsBloc>(() => AuthFormsBloc(get<AuthRepository>()));
  return get;
}

class _$FirebaseInjectableModule extends FirebaseInjectableModule {}
