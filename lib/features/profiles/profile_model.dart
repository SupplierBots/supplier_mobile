import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'profile_model.g.dart';

@JsonSerializable(nullable: false)
@HiveType(typeId: 1)
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

  @HiveField(0)
  final String firstName;
  @HiveField(1)
  final String lastName;
  @HiveField(2)
  final String email;
  @HiveField(3)
  final String phoneNumber;
  @HiveField(4)
  final String address;
  @HiveField(5)
  final String addressDetails;
  @HiveField(6)
  final String city;
  @HiveField(7)
  final String postcode;
  @HiveField(8)
  final String country;
  @HiveField(9)
  final String creditCardType;
  @HiveField(10)
  final String creditCardNumber;
  @HiveField(11)
  final String expiryMonth;
  @HiveField(12)
  final String expiryYear;
  @HiveField(13)
  final String securityCode;

  Map<String, dynamic> toJson() => _$ProfileToJson(this);
}
