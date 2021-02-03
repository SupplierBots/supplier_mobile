part of 'profiles_bloc.dart';

@freezed
abstract class ProfilesEvent with _$ProfilesEvent {
  const factory ProfilesEvent.setProfile({
    @required String name,
    @required Profile profile,
  }) = _SetProfile;

  const factory ProfilesEvent.deleteProfile({
    @required String name,
  }) = _DeleteProfile;
}
