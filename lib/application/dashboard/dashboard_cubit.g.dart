// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DashboardState _$_$_DashboardStateFromJson(Map<String, dynamic> json) {
  return _$_DashboardState(
    generalInfo: json['generalInfo'] == null
        ? null
        : GeneralInfo.fromJson(json['generalInfo'] as Map<String, dynamic>),
    droplists: (json['droplists'] as List)
        ?.map((e) =>
            e == null ? null : Droplist.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_DashboardStateToJson(_$_DashboardState instance) =>
    <String, dynamic>{
      'generalInfo': instance.generalInfo,
      'droplists': instance.droplists,
    };
