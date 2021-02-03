// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'profiles_editor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ProfilesEditorEventTearOff {
  const _$ProfilesEditorEventTearOff();

// ignore: unused_element
  OpenedModal openedModal() {
    return const OpenedModal();
  }

// ignore: unused_element
  ClosedModal closedModal() {
    return const ClosedModal();
  }

// ignore: unused_element
  StartedEditing startedEditing(String name) {
    return StartedEditing(
      name,
    );
  }

// ignore: unused_element
  Canceled canceled() {
    return const Canceled();
  }

// ignore: unused_element
  Saved saved() {
    return const Saved();
  }
}

/// @nodoc
// ignore: unused_element
const $ProfilesEditorEvent = _$ProfilesEditorEventTearOff();

/// @nodoc
mixin _$ProfilesEditorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult openedModal(),
    @required TResult closedModal(),
    @required TResult startedEditing(String name),
    @required TResult canceled(),
    @required TResult saved(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult openedModal(),
    TResult closedModal(),
    TResult startedEditing(String name),
    TResult canceled(),
    TResult saved(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult openedModal(OpenedModal value),
    @required TResult closedModal(ClosedModal value),
    @required TResult startedEditing(StartedEditing value),
    @required TResult canceled(Canceled value),
    @required TResult saved(Saved value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult openedModal(OpenedModal value),
    TResult closedModal(ClosedModal value),
    TResult startedEditing(StartedEditing value),
    TResult canceled(Canceled value),
    TResult saved(Saved value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ProfilesEditorEventCopyWith<$Res> {
  factory $ProfilesEditorEventCopyWith(
          ProfilesEditorEvent value, $Res Function(ProfilesEditorEvent) then) =
      _$ProfilesEditorEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfilesEditorEventCopyWithImpl<$Res>
    implements $ProfilesEditorEventCopyWith<$Res> {
  _$ProfilesEditorEventCopyWithImpl(this._value, this._then);

  final ProfilesEditorEvent _value;
  // ignore: unused_field
  final $Res Function(ProfilesEditorEvent) _then;
}

/// @nodoc
abstract class $OpenedModalCopyWith<$Res> {
  factory $OpenedModalCopyWith(
          OpenedModal value, $Res Function(OpenedModal) then) =
      _$OpenedModalCopyWithImpl<$Res>;
}

/// @nodoc
class _$OpenedModalCopyWithImpl<$Res>
    extends _$ProfilesEditorEventCopyWithImpl<$Res>
    implements $OpenedModalCopyWith<$Res> {
  _$OpenedModalCopyWithImpl(
      OpenedModal _value, $Res Function(OpenedModal) _then)
      : super(_value, (v) => _then(v as OpenedModal));

  @override
  OpenedModal get _value => super._value as OpenedModal;
}

/// @nodoc
class _$OpenedModal implements OpenedModal {
  const _$OpenedModal();

  @override
  String toString() {
    return 'ProfilesEditorEvent.openedModal()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OpenedModal);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult openedModal(),
    @required TResult closedModal(),
    @required TResult startedEditing(String name),
    @required TResult canceled(),
    @required TResult saved(),
  }) {
    assert(openedModal != null);
    assert(closedModal != null);
    assert(startedEditing != null);
    assert(canceled != null);
    assert(saved != null);
    return openedModal();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult openedModal(),
    TResult closedModal(),
    TResult startedEditing(String name),
    TResult canceled(),
    TResult saved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (openedModal != null) {
      return openedModal();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult openedModal(OpenedModal value),
    @required TResult closedModal(ClosedModal value),
    @required TResult startedEditing(StartedEditing value),
    @required TResult canceled(Canceled value),
    @required TResult saved(Saved value),
  }) {
    assert(openedModal != null);
    assert(closedModal != null);
    assert(startedEditing != null);
    assert(canceled != null);
    assert(saved != null);
    return openedModal(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult openedModal(OpenedModal value),
    TResult closedModal(ClosedModal value),
    TResult startedEditing(StartedEditing value),
    TResult canceled(Canceled value),
    TResult saved(Saved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (openedModal != null) {
      return openedModal(this);
    }
    return orElse();
  }
}

abstract class OpenedModal implements ProfilesEditorEvent {
  const factory OpenedModal() = _$OpenedModal;
}

/// @nodoc
abstract class $ClosedModalCopyWith<$Res> {
  factory $ClosedModalCopyWith(
          ClosedModal value, $Res Function(ClosedModal) then) =
      _$ClosedModalCopyWithImpl<$Res>;
}

/// @nodoc
class _$ClosedModalCopyWithImpl<$Res>
    extends _$ProfilesEditorEventCopyWithImpl<$Res>
    implements $ClosedModalCopyWith<$Res> {
  _$ClosedModalCopyWithImpl(
      ClosedModal _value, $Res Function(ClosedModal) _then)
      : super(_value, (v) => _then(v as ClosedModal));

  @override
  ClosedModal get _value => super._value as ClosedModal;
}

/// @nodoc
class _$ClosedModal implements ClosedModal {
  const _$ClosedModal();

  @override
  String toString() {
    return 'ProfilesEditorEvent.closedModal()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ClosedModal);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult openedModal(),
    @required TResult closedModal(),
    @required TResult startedEditing(String name),
    @required TResult canceled(),
    @required TResult saved(),
  }) {
    assert(openedModal != null);
    assert(closedModal != null);
    assert(startedEditing != null);
    assert(canceled != null);
    assert(saved != null);
    return closedModal();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult openedModal(),
    TResult closedModal(),
    TResult startedEditing(String name),
    TResult canceled(),
    TResult saved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (closedModal != null) {
      return closedModal();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult openedModal(OpenedModal value),
    @required TResult closedModal(ClosedModal value),
    @required TResult startedEditing(StartedEditing value),
    @required TResult canceled(Canceled value),
    @required TResult saved(Saved value),
  }) {
    assert(openedModal != null);
    assert(closedModal != null);
    assert(startedEditing != null);
    assert(canceled != null);
    assert(saved != null);
    return closedModal(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult openedModal(OpenedModal value),
    TResult closedModal(ClosedModal value),
    TResult startedEditing(StartedEditing value),
    TResult canceled(Canceled value),
    TResult saved(Saved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (closedModal != null) {
      return closedModal(this);
    }
    return orElse();
  }
}

abstract class ClosedModal implements ProfilesEditorEvent {
  const factory ClosedModal() = _$ClosedModal;
}

/// @nodoc
abstract class $StartedEditingCopyWith<$Res> {
  factory $StartedEditingCopyWith(
          StartedEditing value, $Res Function(StartedEditing) then) =
      _$StartedEditingCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class _$StartedEditingCopyWithImpl<$Res>
    extends _$ProfilesEditorEventCopyWithImpl<$Res>
    implements $StartedEditingCopyWith<$Res> {
  _$StartedEditingCopyWithImpl(
      StartedEditing _value, $Res Function(StartedEditing) _then)
      : super(_value, (v) => _then(v as StartedEditing));

  @override
  StartedEditing get _value => super._value as StartedEditing;

  @override
  $Res call({
    Object name = freezed,
  }) {
    return _then(StartedEditing(
      name == freezed ? _value.name : name as String,
    ));
  }
}

/// @nodoc
class _$StartedEditing implements StartedEditing {
  const _$StartedEditing(this.name) : assert(name != null);

  @override
  final String name;

  @override
  String toString() {
    return 'ProfilesEditorEvent.startedEditing(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is StartedEditing &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  $StartedEditingCopyWith<StartedEditing> get copyWith =>
      _$StartedEditingCopyWithImpl<StartedEditing>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult openedModal(),
    @required TResult closedModal(),
    @required TResult startedEditing(String name),
    @required TResult canceled(),
    @required TResult saved(),
  }) {
    assert(openedModal != null);
    assert(closedModal != null);
    assert(startedEditing != null);
    assert(canceled != null);
    assert(saved != null);
    return startedEditing(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult openedModal(),
    TResult closedModal(),
    TResult startedEditing(String name),
    TResult canceled(),
    TResult saved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (startedEditing != null) {
      return startedEditing(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult openedModal(OpenedModal value),
    @required TResult closedModal(ClosedModal value),
    @required TResult startedEditing(StartedEditing value),
    @required TResult canceled(Canceled value),
    @required TResult saved(Saved value),
  }) {
    assert(openedModal != null);
    assert(closedModal != null);
    assert(startedEditing != null);
    assert(canceled != null);
    assert(saved != null);
    return startedEditing(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult openedModal(OpenedModal value),
    TResult closedModal(ClosedModal value),
    TResult startedEditing(StartedEditing value),
    TResult canceled(Canceled value),
    TResult saved(Saved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (startedEditing != null) {
      return startedEditing(this);
    }
    return orElse();
  }
}

abstract class StartedEditing implements ProfilesEditorEvent {
  const factory StartedEditing(String name) = _$StartedEditing;

  String get name;
  @JsonKey(ignore: true)
  $StartedEditingCopyWith<StartedEditing> get copyWith;
}

/// @nodoc
abstract class $CanceledCopyWith<$Res> {
  factory $CanceledCopyWith(Canceled value, $Res Function(Canceled) then) =
      _$CanceledCopyWithImpl<$Res>;
}

/// @nodoc
class _$CanceledCopyWithImpl<$Res>
    extends _$ProfilesEditorEventCopyWithImpl<$Res>
    implements $CanceledCopyWith<$Res> {
  _$CanceledCopyWithImpl(Canceled _value, $Res Function(Canceled) _then)
      : super(_value, (v) => _then(v as Canceled));

  @override
  Canceled get _value => super._value as Canceled;
}

/// @nodoc
class _$Canceled implements Canceled {
  const _$Canceled();

  @override
  String toString() {
    return 'ProfilesEditorEvent.canceled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Canceled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult openedModal(),
    @required TResult closedModal(),
    @required TResult startedEditing(String name),
    @required TResult canceled(),
    @required TResult saved(),
  }) {
    assert(openedModal != null);
    assert(closedModal != null);
    assert(startedEditing != null);
    assert(canceled != null);
    assert(saved != null);
    return canceled();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult openedModal(),
    TResult closedModal(),
    TResult startedEditing(String name),
    TResult canceled(),
    TResult saved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (canceled != null) {
      return canceled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult openedModal(OpenedModal value),
    @required TResult closedModal(ClosedModal value),
    @required TResult startedEditing(StartedEditing value),
    @required TResult canceled(Canceled value),
    @required TResult saved(Saved value),
  }) {
    assert(openedModal != null);
    assert(closedModal != null);
    assert(startedEditing != null);
    assert(canceled != null);
    assert(saved != null);
    return canceled(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult openedModal(OpenedModal value),
    TResult closedModal(ClosedModal value),
    TResult startedEditing(StartedEditing value),
    TResult canceled(Canceled value),
    TResult saved(Saved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (canceled != null) {
      return canceled(this);
    }
    return orElse();
  }
}

abstract class Canceled implements ProfilesEditorEvent {
  const factory Canceled() = _$Canceled;
}

/// @nodoc
abstract class $SavedCopyWith<$Res> {
  factory $SavedCopyWith(Saved value, $Res Function(Saved) then) =
      _$SavedCopyWithImpl<$Res>;
}

/// @nodoc
class _$SavedCopyWithImpl<$Res> extends _$ProfilesEditorEventCopyWithImpl<$Res>
    implements $SavedCopyWith<$Res> {
  _$SavedCopyWithImpl(Saved _value, $Res Function(Saved) _then)
      : super(_value, (v) => _then(v as Saved));

  @override
  Saved get _value => super._value as Saved;
}

/// @nodoc
class _$Saved implements Saved {
  const _$Saved();

  @override
  String toString() {
    return 'ProfilesEditorEvent.saved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Saved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult openedModal(),
    @required TResult closedModal(),
    @required TResult startedEditing(String name),
    @required TResult canceled(),
    @required TResult saved(),
  }) {
    assert(openedModal != null);
    assert(closedModal != null);
    assert(startedEditing != null);
    assert(canceled != null);
    assert(saved != null);
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult openedModal(),
    TResult closedModal(),
    TResult startedEditing(String name),
    TResult canceled(),
    TResult saved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult openedModal(OpenedModal value),
    @required TResult closedModal(ClosedModal value),
    @required TResult startedEditing(StartedEditing value),
    @required TResult canceled(Canceled value),
    @required TResult saved(Saved value),
  }) {
    assert(openedModal != null);
    assert(closedModal != null);
    assert(startedEditing != null);
    assert(canceled != null);
    assert(saved != null);
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult openedModal(OpenedModal value),
    TResult closedModal(ClosedModal value),
    TResult startedEditing(StartedEditing value),
    TResult canceled(Canceled value),
    TResult saved(Saved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class Saved implements ProfilesEditorEvent {
  const factory Saved() = _$Saved;
}

/// @nodoc
class _$ProfilesEditorStateTearOff {
  const _$ProfilesEditorStateTearOff();

// ignore: unused_element
  _ProfilesEditorState call(
      {@required bool isModalOpen,
      @required bool isEditing,
      @required String editedProfile}) {
    return _ProfilesEditorState(
      isModalOpen: isModalOpen,
      isEditing: isEditing,
      editedProfile: editedProfile,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ProfilesEditorState = _$ProfilesEditorStateTearOff();

/// @nodoc
mixin _$ProfilesEditorState {
  bool get isModalOpen;
  bool get isEditing;
  String get editedProfile;

  @JsonKey(ignore: true)
  $ProfilesEditorStateCopyWith<ProfilesEditorState> get copyWith;
}

/// @nodoc
abstract class $ProfilesEditorStateCopyWith<$Res> {
  factory $ProfilesEditorStateCopyWith(
          ProfilesEditorState value, $Res Function(ProfilesEditorState) then) =
      _$ProfilesEditorStateCopyWithImpl<$Res>;
  $Res call({bool isModalOpen, bool isEditing, String editedProfile});
}

/// @nodoc
class _$ProfilesEditorStateCopyWithImpl<$Res>
    implements $ProfilesEditorStateCopyWith<$Res> {
  _$ProfilesEditorStateCopyWithImpl(this._value, this._then);

  final ProfilesEditorState _value;
  // ignore: unused_field
  final $Res Function(ProfilesEditorState) _then;

  @override
  $Res call({
    Object isModalOpen = freezed,
    Object isEditing = freezed,
    Object editedProfile = freezed,
  }) {
    return _then(_value.copyWith(
      isModalOpen:
          isModalOpen == freezed ? _value.isModalOpen : isModalOpen as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      editedProfile: editedProfile == freezed
          ? _value.editedProfile
          : editedProfile as String,
    ));
  }
}

/// @nodoc
abstract class _$ProfilesEditorStateCopyWith<$Res>
    implements $ProfilesEditorStateCopyWith<$Res> {
  factory _$ProfilesEditorStateCopyWith(_ProfilesEditorState value,
          $Res Function(_ProfilesEditorState) then) =
      __$ProfilesEditorStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isModalOpen, bool isEditing, String editedProfile});
}

/// @nodoc
class __$ProfilesEditorStateCopyWithImpl<$Res>
    extends _$ProfilesEditorStateCopyWithImpl<$Res>
    implements _$ProfilesEditorStateCopyWith<$Res> {
  __$ProfilesEditorStateCopyWithImpl(
      _ProfilesEditorState _value, $Res Function(_ProfilesEditorState) _then)
      : super(_value, (v) => _then(v as _ProfilesEditorState));

  @override
  _ProfilesEditorState get _value => super._value as _ProfilesEditorState;

  @override
  $Res call({
    Object isModalOpen = freezed,
    Object isEditing = freezed,
    Object editedProfile = freezed,
  }) {
    return _then(_ProfilesEditorState(
      isModalOpen:
          isModalOpen == freezed ? _value.isModalOpen : isModalOpen as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      editedProfile: editedProfile == freezed
          ? _value.editedProfile
          : editedProfile as String,
    ));
  }
}

/// @nodoc
class _$_ProfilesEditorState implements _ProfilesEditorState {
  const _$_ProfilesEditorState(
      {@required this.isModalOpen,
      @required this.isEditing,
      @required this.editedProfile})
      : assert(isModalOpen != null),
        assert(isEditing != null),
        assert(editedProfile != null);

  @override
  final bool isModalOpen;
  @override
  final bool isEditing;
  @override
  final String editedProfile;

  @override
  String toString() {
    return 'ProfilesEditorState(isModalOpen: $isModalOpen, isEditing: $isEditing, editedProfile: $editedProfile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProfilesEditorState &&
            (identical(other.isModalOpen, isModalOpen) ||
                const DeepCollectionEquality()
                    .equals(other.isModalOpen, isModalOpen)) &&
            (identical(other.isEditing, isEditing) ||
                const DeepCollectionEquality()
                    .equals(other.isEditing, isEditing)) &&
            (identical(other.editedProfile, editedProfile) ||
                const DeepCollectionEquality()
                    .equals(other.editedProfile, editedProfile)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isModalOpen) ^
      const DeepCollectionEquality().hash(isEditing) ^
      const DeepCollectionEquality().hash(editedProfile);

  @JsonKey(ignore: true)
  @override
  _$ProfilesEditorStateCopyWith<_ProfilesEditorState> get copyWith =>
      __$ProfilesEditorStateCopyWithImpl<_ProfilesEditorState>(
          this, _$identity);
}

abstract class _ProfilesEditorState implements ProfilesEditorState {
  const factory _ProfilesEditorState(
      {@required bool isModalOpen,
      @required bool isEditing,
      @required String editedProfile}) = _$_ProfilesEditorState;

  @override
  bool get isModalOpen;
  @override
  bool get isEditing;
  @override
  String get editedProfile;
  @override
  @JsonKey(ignore: true)
  _$ProfilesEditorStateCopyWith<_ProfilesEditorState> get copyWith;
}
