import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profiles_editor_state.dart';
part 'profiles_editor_cubit.freezed.dart';

class ProfilesEditorCubit extends Cubit<ProfilesEditorState> {
  ProfilesEditorCubit() : super(ProfilesEditorState.initial());

  void startedEditing(String name) => emit(
        ProfilesEditorState(
          isEditing: true,
          editedProfile: name,
        ),
      );

  void finishedEditing() => emit(ProfilesEditorState.initial());
}
