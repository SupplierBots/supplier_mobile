import 'package:json_annotation/json_annotation.dart';

part 'profile_model.g.dart';

@JsonSerializable(nullable: false)
class Profile {
  Profile(
      {this.firstName,
      this.lastName,
      this.email,
      this.phoneNumber,
      this.address,
      this.addressDetails,
      this.city,
      this.postcode,
      this.country,
      this.creditCardType,
      this.creditCardNumber,
      this.expiryMonth,
      this.expiryYear,
      this.securityCode});

  factory Profile.fromJson(Map<String, dynamic> json) =>
      _$ProfileFromJson(json);

  final String firstName;
  final String lastName;
  final String email;
  final String phoneNumber;
  final String address;
  final String addressDetails;
  final String city;
  final String postcode;
  final String country;
  final String creditCardType;
  final String creditCardNumber;
  final String expiryMonth;
  final String expiryYear;
  final String securityCode;

  Map<String, dynamic> toJson() => _$ProfileToJson(this);
}
