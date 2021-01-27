// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProfileAdapter extends TypeAdapter<Profile> {
  @override
  final int typeId = 1;

  @override
  Profile read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Profile(
      firstName: fields[0] as String,
      lastName: fields[1] as String,
      email: fields[2] as String,
      phoneNumber: fields[3] as String,
      address: fields[4] as String,
      addressDetails: fields[5] as String,
      city: fields[6] as String,
      postcode: fields[7] as String,
      country: fields[8] as String,
      creditCardType: fields[9] as String,
      creditCardNumber: fields[10] as String,
      expiryMonth: fields[11] as String,
      expiryYear: fields[12] as String,
      securityCode: fields[13] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Profile obj) {
    writer
      ..writeByte(14)
      ..writeByte(0)
      ..write(obj.firstName)
      ..writeByte(1)
      ..write(obj.lastName)
      ..writeByte(2)
      ..write(obj.email)
      ..writeByte(3)
      ..write(obj.phoneNumber)
      ..writeByte(4)
      ..write(obj.address)
      ..writeByte(5)
      ..write(obj.addressDetails)
      ..writeByte(6)
      ..write(obj.city)
      ..writeByte(7)
      ..write(obj.postcode)
      ..writeByte(8)
      ..write(obj.country)
      ..writeByte(9)
      ..write(obj.creditCardType)
      ..writeByte(10)
      ..write(obj.creditCardNumber)
      ..writeByte(11)
      ..write(obj.expiryMonth)
      ..writeByte(12)
      ..write(obj.expiryYear)
      ..writeByte(13)
      ..write(obj.securityCode);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProfileAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

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
