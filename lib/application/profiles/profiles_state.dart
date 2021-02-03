part of 'profiles_bloc.dart';

@freezed
abstract class ProfilesState with _$ProfilesState {
  const factory ProfilesState({
    Map<String, Profile> profiles,
  }) = _ProfilesState;

  factory ProfilesState.initial() => const ProfilesState(profiles: {});

  factory ProfilesState.fromJson(Map<String, dynamic> json) =>
      _$ProfilesStateFromJson(json);
}
