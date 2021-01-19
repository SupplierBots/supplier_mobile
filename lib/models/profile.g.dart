// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Profile _$ProfileFromJson(Map<String, dynamic> json) {
  return Profile(
    firstName: json['firstName'] as String,
    lastName: json['lastName'] as String,
    email: json['email'] as String,
    phoneNumber: json['phoneNumber'] as String,
    address: json['address'] as String,
    addressDetails: json['addressDetails'] as String,
    city: json['city'] as String,
    postcode: json['postcode'] as String,
    country: json['country'] as String,
    creditCardType: json['creditCardType'] as String,
    creditCardNumber: json['creditCardNumber'] as String,
    expiryMonth: json['expiryMonth'] as String,
    expiryYear: json['expiryYear'] as String,
    securityCode: json['securityCode'] as String,
  );
}

Map<String, dynamic> _$ProfileToJson(Profile instance) => <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'address': instance.address,
      'addressDetails': instance.addressDetails,
      'city': instance.city,
      'postcode': instance.postcode,
      'country': instance.country,
      'creditCardType': instance.creditCardType,
      'creditCardNumber': instance.creditCardNumber,
      'expiryMonth': instance.expiryMonth,
      'expiryYear': instance.expiryYear,
      'securityCode': instance.securityCode,
    };
