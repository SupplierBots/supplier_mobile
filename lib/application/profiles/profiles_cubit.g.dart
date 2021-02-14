// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profiles_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProfilesState _$_$_ProfilesStateFromJson(Map<String, dynamic> json) {
  return _$_ProfilesState(
    profiles: (json['profiles'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(
          k, e == null ? null : Profile.fromJson(e as Map<String, dynamic>)),
    ),
  );
}

Map<String, dynamic> _$_$_ProfilesStateToJson(_$_ProfilesState instance) =>
    <String, dynamic>{
      'profiles': instance.profiles,
    };
