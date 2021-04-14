// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remote_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RemoteState _$_$_RemoteStateFromJson(Map<String, dynamic> json) {
  return _$_RemoteState(
    delays: json['delays'] == null
        ? null
        : Delays.fromJson(json['delays'] as Map<String, dynamic>),
    products: (json['products'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(
          k, e == null ? null : Product.fromJson(e as Map<String, dynamic>)),
    ),
  );
}

Map<String, dynamic> _$_$_RemoteStateToJson(_$_RemoteState instance) =>
    <String, dynamic>{
      'delays': instance.delays,
      'products': instance.products,
    };
