// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'dashboard_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
DashboardState _$DashboardStateFromJson(Map<String, dynamic> json) {
  return _DashboardState.fromJson(json);
}

/// @nodoc
class _$DashboardStateTearOff {
  const _$DashboardStateTearOff();

// ignore: unused_element
  _DashboardState call(
      {@required GeneralInfo generalInfo, @required List<Droplist> droplists}) {
    return _DashboardState(
      generalInfo: generalInfo,
      droplists: droplists,
    );
  }

// ignore: unused_element
  DashboardState fromJson(Map<String, Object> json) {
    return DashboardState.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $DashboardState = _$DashboardStateTearOff();

/// @nodoc
mixin _$DashboardState {
  GeneralInfo get generalInfo;
  List<Droplist> get droplists;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $DashboardStateCopyWith<DashboardState> get copyWith;
}

/// @nodoc
abstract class $DashboardStateCopyWith<$Res> {
  factory $DashboardStateCopyWith(
          DashboardState value, $Res Function(DashboardState) then) =
      _$DashboardStateCopyWithImpl<$Res>;
  $Res call({GeneralInfo generalInfo, List<Droplist> droplists});

  $GeneralInfoCopyWith<$Res> get generalInfo;
}

/// @nodoc
class _$DashboardStateCopyWithImpl<$Res>
    implements $DashboardStateCopyWith<$Res> {
  _$DashboardStateCopyWithImpl(this._value, this._then);

  final DashboardState _value;
  // ignore: unused_field
  final $Res Function(DashboardState) _then;

  @override
  $Res call({
    Object generalInfo = freezed,
    Object droplists = freezed,
  }) {
    return _then(_value.copyWith(
      generalInfo: generalInfo == freezed
          ? _value.generalInfo
          : generalInfo as GeneralInfo,
      droplists:
          droplists == freezed ? _value.droplists : droplists as List<Droplist>,
    ));
  }

  @override
  $GeneralInfoCopyWith<$Res> get generalInfo {
    if (_value.generalInfo == null) {
      return null;
    }
    return $GeneralInfoCopyWith<$Res>(_value.generalInfo, (value) {
      return _then(_value.copyWith(generalInfo: value));
    });
  }
}

/// @nodoc
abstract class _$DashboardStateCopyWith<$Res>
    implements $DashboardStateCopyWith<$Res> {
  factory _$DashboardStateCopyWith(
          _DashboardState value, $Res Function(_DashboardState) then) =
      __$DashboardStateCopyWithImpl<$Res>;
  @override
  $Res call({GeneralInfo generalInfo, List<Droplist> droplists});

  @override
  $GeneralInfoCopyWith<$Res> get generalInfo;
}

/// @nodoc
class __$DashboardStateCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res>
    implements _$DashboardStateCopyWith<$Res> {
  __$DashboardStateCopyWithImpl(
      _DashboardState _value, $Res Function(_DashboardState) _then)
      : super(_value, (v) => _then(v as _DashboardState));

  @override
  _DashboardState get _value => super._value as _DashboardState;

  @override
  $Res call({
    Object generalInfo = freezed,
    Object droplists = freezed,
  }) {
    return _then(_DashboardState(
      generalInfo: generalInfo == freezed
          ? _value.generalInfo
          : generalInfo as GeneralInfo,
      droplists:
          droplists == freezed ? _value.droplists : droplists as List<Droplist>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_DashboardState implements _DashboardState {
  const _$_DashboardState(
      {@required this.generalInfo, @required this.droplists})
      : assert(generalInfo != null),
        assert(droplists != null);

  factory _$_DashboardState.fromJson(Map<String, dynamic> json) =>
      _$_$_DashboardStateFromJson(json);

  @override
  final GeneralInfo generalInfo;
  @override
  final List<Droplist> droplists;

  @override
  String toString() {
    return 'DashboardState(generalInfo: $generalInfo, droplists: $droplists)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DashboardState &&
            (identical(other.generalInfo, generalInfo) ||
                const DeepCollectionEquality()
                    .equals(other.generalInfo, generalInfo)) &&
            (identical(other.droplists, droplists) ||
                const DeepCollectionEquality()
                    .equals(other.droplists, droplists)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(generalInfo) ^
      const DeepCollectionEquality().hash(droplists);

  @JsonKey(ignore: true)
  @override
  _$DashboardStateCopyWith<_DashboardState> get copyWith =>
      __$DashboardStateCopyWithImpl<_DashboardState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DashboardStateToJson(this);
  }
}

abstract class _DashboardState implements DashboardState {
  const factory _DashboardState(
      {@required GeneralInfo generalInfo,
      @required List<Droplist> droplists}) = _$_DashboardState;

  factory _DashboardState.fromJson(Map<String, dynamic> json) =
      _$_DashboardState.fromJson;

  @override
  GeneralInfo get generalInfo;
  @override
  List<Droplist> get droplists;
  @override
  @JsonKey(ignore: true)
  _$DashboardStateCopyWith<_DashboardState> get copyWith;
}
