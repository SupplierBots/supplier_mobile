import 'package:cloud_functions/cloud_functions.dart';

extension HttpsCallableResultX<T> on HttpsCallableResult<T> {
  Map<String, dynamic> toJson() {
    return Map<String, dynamic>.from(data as Map<dynamic, dynamic>);
  }
}
