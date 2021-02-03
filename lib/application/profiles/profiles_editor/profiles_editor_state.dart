part of 'profiles_editor_bloc.dart';

@freezed
abstract class ProfilesEditorState with _$ProfilesEditorState {
  const factory ProfilesEditorState({
    @required bool isModalOpen,
    @required bool isEditing,
    @required String editedProfile,
  }) = _ProfilesEditorState;

  factory ProfilesEditorState.initial() => const ProfilesEditorState(
        isModalOpen: false,
        isEditing: false,
        editedProfile: '',
      );
}
