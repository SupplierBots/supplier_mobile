// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Profile _$_$_ProfileFromJson(Map<String, dynamic> json) {
  return _$_Profile(
    firstName: json['firstName'] as String,
    lastName: json['lastName'] as String,
    email: json['email'] as String,
    phoneNumber: json['phoneNumber'] as String,
    address: json['address'] as String,
    addressDetails: json['addressDetails'] as String,
    city: json['city'] as String,
    postcode: json['postcode'] as String,
    country: json['country'] as String,
    state: json['state'] as String,
    creditCardType: json['creditCardType'] as String,
    creditCardNumber: json['creditCardNumber'] as String,
    expiryMonth: json['expiryMonth'] as String,
    expiryYear: json['expiryYear'] as String,
    securityCode: json['securityCode'] as String,
  );
}

Map<String, dynamic> _$_$_ProfileToJson(_$_Profile instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'address': instance.address,
      'addressDetails': instance.addressDetails,
      'city': instance.city,
      'postcode': instance.postcode,
      'country': instance.country,
      'state': instance.state,
      'creditCardType': instance.creditCardType,
      'creditCardNumber': instance.creditCardNumber,
      'expiryMonth': instance.expiryMonth,
      'expiryYear': instance.expiryYear,
      'securityCode': instance.securityCode,
    };
