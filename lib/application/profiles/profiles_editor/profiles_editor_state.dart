part of 'profiles_editor_cubit.dart';

@freezed
abstract class ProfilesEditorState with _$ProfilesEditorState {
  const factory ProfilesEditorState({
    @required bool isEditing,
    @required String editedProfile,
  }) = _ProfilesEditorState;

  factory ProfilesEditorState.initial() => const ProfilesEditorState(
        isEditing: false,
        editedProfile: '',
      );
}
