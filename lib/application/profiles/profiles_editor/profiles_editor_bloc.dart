import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profiles_editor_event.dart';
part 'profiles_editor_state.dart';
part 'profiles_editor_bloc.freezed.dart';

class ProfilesEditorBloc
    extends Bloc<ProfilesEditorEvent, ProfilesEditorState> {
  ProfilesEditorBloc() : super(ProfilesEditorState.initial());

  @override
  Stream<ProfilesEditorState> mapEventToState(
    ProfilesEditorEvent event,
  ) async* {
    yield* event.map(openedModal: (e) async* {
      yield state.copyWith(
        isModalOpen: true,
      );
    }, closedModal: (e) async* {
      yield state.copyWith(
        isModalOpen: false,
      );
    }, startedEditing: (e) async* {
      yield state.copyWith(
        isModalOpen: false,
        isEditing: true,
        editedProfile: e.name,
      );
    }, canceled: (e) async* {
      yield state.copyWith(
        isModalOpen: false,
        isEditing: false,
        editedProfile: '',
      );
    }, saved: (e) async* {
      yield state.copyWith(
        isModalOpen: false,
        isEditing: false,
        editedProfile: '',
      );
    });
  }
}
