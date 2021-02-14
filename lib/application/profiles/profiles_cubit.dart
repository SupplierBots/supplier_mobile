import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:supplier_mobile/domain/profiles/profile.dart';

part 'profiles_state.dart';
part 'profiles_cubit.freezed.dart';
part 'profiles_cubit.g.dart';

class ProfilesCubit extends HydratedCubit<ProfilesState> {
  ProfilesCubit() : super(ProfilesState.initial());

  void setProfile({
    @required String name,
    @required Profile profile,
  }) {
    emit(state.copyWith(
      profiles: {
        ...state.profiles,
        name: profile,
      },
    ));
  }

  void deletedProfile({
    @required String name,
  }) {
    final copiedProfiles = {...state.profiles};
    copiedProfiles.remove(name);
    emit(state.copyWith(
      profiles: copiedProfiles,
    ));
  }

  @override
  ProfilesState fromJson(Map<String, dynamic> json) {
    return ProfilesState.fromJson(json);
  }

  @override
  Map<String, dynamic> toJson(ProfilesState state) {
    return state.toJson();
  }
}
