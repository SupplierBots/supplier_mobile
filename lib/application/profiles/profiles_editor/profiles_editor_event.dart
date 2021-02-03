part of 'profiles_editor_bloc.dart';

@freezed
abstract class ProfilesEditorEvent with _$ProfilesEditorEvent {
  const factory ProfilesEditorEvent.openedModal() = OpenedModal;
  const factory ProfilesEditorEvent.closedModal() = ClosedModal;
  const factory ProfilesEditorEvent.startedEditing(String name) =
      StartedEditing;
  const factory ProfilesEditorEvent.canceled() = Canceled;
  const factory ProfilesEditorEvent.saved() = Saved;
}
