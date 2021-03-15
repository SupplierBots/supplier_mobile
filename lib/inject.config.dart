// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:cloud_functions/cloud_functions.dart' as _i5;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_cubit.dart' as _i10;
import 'application/auth/auth_forms/auth_forms_cubit.dart' as _i11;
import 'application/dashboard/dashboard_cubit.dart' as _i12;
import 'domain/auth/auth_repository.dart' as _i6;
import 'domain/dashboard/dashboard_repository.dart' as _i8;
import 'infrastructure/auth/firebase_auth_repository.dart' as _i7;
import 'infrastructure/core/firebase_injectable_module.dart' as _i13;
import 'infrastructure/dashboard/firebase_dashboard_repository.dart'
    as _i9; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String environment, _i2.EnvironmentFilter environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<_i3.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i4.FirebaseFirestore>(
      () => firebaseInjectableModule.firestore);
  gh.lazySingleton<_i5.FirebaseFunctions>(
      () => firebaseInjectableModule.cloudFunctions);
  gh.lazySingleton<_i6.AuthRepository>(() => _i7.FirebaseAuthRepository(
      get<_i3.FirebaseAuth>(), get<_i5.FirebaseFunctions>()));
  gh.lazySingleton<_i8.DashboardRepository>(
      () => _i9.FirebaseDashboardRepository(get<_i4.FirebaseFirestore>()));
  gh.factory<_i10.AuthCubit>(() => _i10.AuthCubit(get<_i6.AuthRepository>()));
  gh.factory<_i11.AuthFormsCubit>(
      () => _i11.AuthFormsCubit(get<_i6.AuthRepository>()));
  gh.factory<_i12.DashboardCubit>(
      () => _i12.DashboardCubit(get<_i8.DashboardRepository>()));
  return get;
}

class _$FirebaseInjectableModule extends _i13.FirebaseInjectableModule {}
