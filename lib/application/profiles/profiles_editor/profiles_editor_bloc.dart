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
    yield* event.map(startedEditing: (e) async* {
      yield state.copyWith(
        isEditing: true,
        editedProfile: e.name,
      );
    }, canceled: (e) async* {
      yield ProfilesEditorState.initial();
    }, saved: (e) async* {
      yield ProfilesEditorState.initial();
    });
  }
}
