import 'package:json_annotation/json_annotation.dart';

part 'user_details_model.g.dart';

@JsonSerializable(nullable: false)
class UserDetails {
  UserDetails({this.uid, this.email});

  factory UserDetails.fromJson(Map<String, dynamic> json) =>
      _$UserDetailsFromJson(json);

  final String uid;
  final String email;

  Map<String, dynamic> toJson() => _$UserDetailsToJson(this);
}
