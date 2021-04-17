// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Task _$TaskFromJson(Map<String, dynamic> json) {
  return _Task.fromJson(json);
}

/// @nodoc
class _$TaskTearOff {
  const _$TaskTearOff();

// ignore: unused_element
  _Task call(
      {@required String product,
      @required String profileName,
      @required String size,
      @required bool anyColor,
      @required bool anySize,
      @required String anySizeOption,
      @required List<String> colors}) {
    return _Task(
      product: product,
      profileName: profileName,
      size: size,
      anyColor: anyColor,
      anySize: anySize,
      anySizeOption: anySizeOption,
      colors: colors,
    );
  }

// ignore: unused_element
  Task fromJson(Map<String, Object> json) {
    return Task.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Task = _$TaskTearOff();

/// @nodoc
mixin _$Task {
  String get product;
  String get profileName;
  String get size;
  bool get anyColor;
  bool get anySize;
  String get anySizeOption;
  List<String> get colors;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $TaskCopyWith<Task> get copyWith;
}

/// @nodoc
abstract class $TaskCopyWith<$Res> {
  factory $TaskCopyWith(Task value, $Res Function(Task) then) =
      _$TaskCopyWithImpl<$Res>;
  $Res call(
      {String product,
      String profileName,
      String size,
      bool anyColor,
      bool anySize,
      String anySizeOption,
      List<String> colors});
}

/// @nodoc
class _$TaskCopyWithImpl<$Res> implements $TaskCopyWith<$Res> {
  _$TaskCopyWithImpl(this._value, this._then);

  final Task _value;
  // ignore: unused_field
  final $Res Function(Task) _then;

  @override
  $Res call({
    Object product = freezed,
    Object profileName = freezed,
    Object size = freezed,
    Object anyColor = freezed,
    Object anySize = freezed,
    Object anySizeOption = freezed,
    Object colors = freezed,
  }) {
    return _then(_value.copyWith(
      product: product == freezed ? _value.product : product as String,
      profileName:
          profileName == freezed ? _value.profileName : profileName as String,
      size: size == freezed ? _value.size : size as String,
      anyColor: anyColor == freezed ? _value.anyColor : anyColor as bool,
      anySize: anySize == freezed ? _value.anySize : anySize as bool,
      anySizeOption: anySizeOption == freezed
          ? _value.anySizeOption
          : anySizeOption as String,
      colors: colors == freezed ? _value.colors : colors as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$TaskCopyWith<$Res> implements $TaskCopyWith<$Res> {
  factory _$TaskCopyWith(_Task value, $Res Function(_Task) then) =
      __$TaskCopyWithImpl<$Res>;
  @override
  $Res call(
      {String product,
      String profileName,
      String size,
      bool anyColor,
      bool anySize,
      String anySizeOption,
      List<String> colors});
}

/// @nodoc
class __$TaskCopyWithImpl<$Res> extends _$TaskCopyWithImpl<$Res>
    implements _$TaskCopyWith<$Res> {
  __$TaskCopyWithImpl(_Task _value, $Res Function(_Task) _then)
      : super(_value, (v) => _then(v as _Task));

  @override
  _Task get _value => super._value as _Task;

  @override
  $Res call({
    Object product = freezed,
    Object profileName = freezed,
    Object size = freezed,
    Object anyColor = freezed,
    Object anySize = freezed,
    Object anySizeOption = freezed,
    Object colors = freezed,
  }) {
    return _then(_Task(
      product: product == freezed ? _value.product : product as String,
      profileName:
          profileName == freezed ? _value.profileName : profileName as String,
      size: size == freezed ? _value.size : size as String,
      anyColor: anyColor == freezed ? _value.anyColor : anyColor as bool,
      anySize: anySize == freezed ? _value.anySize : anySize as bool,
      anySizeOption: anySizeOption == freezed
          ? _value.anySizeOption
          : anySizeOption as String,
      colors: colors == freezed ? _value.colors : colors as List<String>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Task implements _Task {
  const _$_Task(
      {@required this.product,
      @required this.profileName,
      @required this.size,
      @required this.anyColor,
      @required this.anySize,
      @required this.anySizeOption,
      @required this.colors})
      : assert(product != null),
        assert(profileName != null),
        assert(size != null),
        assert(anyColor != null),
        assert(anySize != null),
        assert(anySizeOption != null),
        assert(colors != null);

  factory _$_Task.fromJson(Map<String, dynamic> json) =>
      _$_$_TaskFromJson(json);

  @override
  final String product;
  @override
  final String profileName;
  @override
  final String size;
  @override
  final bool anyColor;
  @override
  final bool anySize;
  @override
  final String anySizeOption;
  @override
  final List<String> colors;

  @override
  String toString() {
    return 'Task(product: $product, profileName: $profileName, size: $size, anyColor: $anyColor, anySize: $anySize, anySizeOption: $anySizeOption, colors: $colors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Task &&
            (identical(other.product, product) ||
                const DeepCollectionEquality()
                    .equals(other.product, product)) &&
            (identical(other.profileName, profileName) ||
                const DeepCollectionEquality()
                    .equals(other.profileName, profileName)) &&
            (identical(other.size, size) ||
                const DeepCollectionEquality().equals(other.size, size)) &&
            (identical(other.anyColor, anyColor) ||
                const DeepCollectionEquality()
                    .equals(other.anyColor, anyColor)) &&
            (identical(other.anySize, anySize) ||
                const DeepCollectionEquality()
                    .equals(other.anySize, anySize)) &&
            (identical(other.anySizeOption, anySizeOption) ||
                const DeepCollectionEquality()
                    .equals(other.anySizeOption, anySizeOption)) &&
            (identical(other.colors, colors) ||
                const DeepCollectionEquality().equals(other.colors, colors)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(product) ^
      const DeepCollectionEquality().hash(profileName) ^
      const DeepCollectionEquality().hash(size) ^
      const DeepCollectionEquality().hash(anyColor) ^
      const DeepCollectionEquality().hash(anySize) ^
      const DeepCollectionEquality().hash(anySizeOption) ^
      const DeepCollectionEquality().hash(colors);

  @JsonKey(ignore: true)
  @override
  _$TaskCopyWith<_Task> get copyWith =>
      __$TaskCopyWithImpl<_Task>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TaskToJson(this);
  }
}

abstract class _Task implements Task {
  const factory _Task(
      {@required String product,
      @required String profileName,
      @required String size,
      @required bool anyColor,
      @required bool anySize,
      @required String anySizeOption,
      @required List<String> colors}) = _$_Task;

  factory _Task.fromJson(Map<String, dynamic> json) = _$_Task.fromJson;

  @override
  String get product;
  @override
  String get profileName;
  @override
  String get size;
  @override
  bool get anyColor;
  @override
  bool get anySize;
  @override
  String get anySizeOption;
  @override
  List<String> get colors;
  @override
  @JsonKey(ignore: true)
  _$TaskCopyWith<_Task> get copyWith;
}
