import 'package:cloud_functions/cloud_functions.dart';
import 'package:supplier_mobile/infrastructure/core/cloud_functions_responses/add_instance_response.dart';
import 'package:supplier_mobile/infrastructure/core/cloud_functions_responses/remove_instance_response.dart';

extension HttpsCallableResultX<T> on HttpsCallableResult<T> {
  Map<String, dynamic> toJson() {
    return Map<String, dynamic>.from(data as Map<dynamic, dynamic>);
  }
}

extension FirebaseFunctionsX on FirebaseFunctions {
  Future<AddInstanceResponse> addMobileInstance() async {
    final response = await httpsCallable('addMobileInstance')();
    return AddInstanceResponse.fromJson(response.toJson());
  }

  Future<RemoveInstanceResponse> removeMobileInstance() async {
    final response = await httpsCallable('removeMobileInstance')();
    return RemoveInstanceResponse.fromJson(response.toJson());
  }
}
