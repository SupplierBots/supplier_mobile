import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile.freezed.dart';
part 'profile.g.dart';

@freezed
abstract class Profile with _$Profile {
  const factory Profile({
    @required String firstName,
    @required String lastName,
    @required String email,
    @required String phoneNumber,
    @required String address,
    String addressDetails,
    @required String city,
    @required String postcode,
    @required String country,
    String state,
    @required String creditCardType,
    @required String creditCardNumber,
    @required String expiryMonth,
    @required String expiryYear,
    @required String securityCode,
  }) = _Profile;
  factory Profile.fromJson(Map<String, dynamic> json) =>
      _$ProfileFromJson(json);
}
