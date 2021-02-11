import 'package:freezed_annotation/freezed_annotation.dart';

part 'general_info.freezed.dart';
part 'general_info.g.dart';

@freezed
abstract class GeneralInfo with _$GeneralInfo {
  const factory GeneralInfo({
    @required String news,
    @required String tips,
    @required String version,
  }) = _GeneralInfo;
  factory GeneralInfo.fromJson(Map<String, dynamic> json) =>
      _$GeneralInfoFromJson(json);
}
