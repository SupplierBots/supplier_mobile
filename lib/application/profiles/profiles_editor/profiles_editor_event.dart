part of 'profiles_editor_bloc.dart';

@freezed
abstract class ProfilesEditorEvent with _$ProfilesEditorEvent {
  const factory ProfilesEditorEvent.startedEditing(String name) =
      StartedEditing;
  const factory ProfilesEditorEvent.canceled() = Canceled;
  const factory ProfilesEditorEvent.saved() = Saved;
}
