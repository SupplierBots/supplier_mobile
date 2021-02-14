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
    droplists: json['droplists'] == null
        ? null
        : DroplistCollection.fromJson(
            json['droplists'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_DashboardStateToJson(_$_DashboardState instance) =>
    <String, dynamic>{
      'generalInfo': instance.generalInfo,
      'droplists': instance.droplists,
    };
