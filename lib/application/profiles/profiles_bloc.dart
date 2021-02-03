import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:supplier_mobile/domain/profiles/profile.dart';

part 'profiles_event.dart';
part 'profiles_state.dart';
part 'profiles_bloc.freezed.dart';
part 'profiles_bloc.g.dart';

class ProfilesBloc extends HydratedBloc<ProfilesEvent, ProfilesState> {
  ProfilesBloc() : super(ProfilesState.initial());

  @override
  Stream<ProfilesState> mapEventToState(
    ProfilesEvent event,
  ) async* {
    yield* event.map(
      setProfile: (e) async* {
        yield state.copyWith(
          profiles: {
            ...state.profiles,
            e.name: e.profile,
          },
        );
      },
      deleteProfile: (e) async* {
        final copy = state.copyWith();
        copy.profiles.remove(e.name);
        yield copy;
      },
    );
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
