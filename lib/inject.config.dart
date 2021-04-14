// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:cloud_functions/cloud_functions.dart' as _i5;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_cubit.dart' as _i14;
import 'application/auth/auth_forms/auth_forms_cubit.dart' as _i15;
import 'application/dashboard/dashboard_cubit.dart' as _i16;
import 'application/remote/remote_cubit.dart' as _i13;
import 'domain/auth/auth_repository.dart' as _i9;
import 'domain/dashboard/dashboard_repository.dart' as _i11;
import 'domain/remote/remote_repository.dart' as _i6;
import 'infrastructure/auth/firebase_auth_repository.dart' as _i10;
import 'infrastructure/core/firebase_injectable_module.dart' as _i17;
import 'infrastructure/dashboard/firebase_dashboard_repository.dart' as _i12;
import 'infrastructure/remote/firebase_remote_repository.dart' as _i7;
import 'presentation/core/vibrate.dart'
    as _i8; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i6.RemoteRepository>(
      () => _i7.FirebaseRemoteRepository(get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i8.Vibrate>(() => _i8.Vibrate());
  gh.lazySingleton<_i9.AuthRepository>(() => _i10.FirebaseAuthRepository(
      get<_i3.FirebaseAuth>(), get<_i5.FirebaseFunctions>()));
  gh.lazySingleton<_i11.DashboardRepository>(
      () => _i12.FirebaseDashboardRepository(get<_i4.FirebaseFirestore>()));
  gh.factory<_i13.RemoteCubit>(
      () => _i13.RemoteCubit(get<_i6.RemoteRepository>()));
  gh.factory<_i14.AuthCubit>(() => _i14.AuthCubit(get<_i9.AuthRepository>()));
  gh.factory<_i15.AuthFormsCubit>(
      () => _i15.AuthFormsCubit(get<_i9.AuthRepository>()));
  gh.factory<_i16.DashboardCubit>(
      () => _i16.DashboardCubit(get<_i11.DashboardRepository>()));
  return get;
}

class _$FirebaseInjectableModule extends _i17.FirebaseInjectableModule {}
