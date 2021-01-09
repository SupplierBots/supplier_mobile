import 'dart:collection';
import 'package:flutter/foundation.dart';
import 'package:supplier_mobile/models/profile.dart';

class ProfilesState with ChangeNotifier {
  final Map<String, Profile> _profiles = <String, Profile>{};

  UnmodifiableMapView<String, Profile> get profiles =>
      UnmodifiableMapView<String, Profile>(_profiles);

  void addProfile(String profileName, Profile profile) {
    _profiles[profileName] = profile;
    notifyListeners();
  }

  void removeProfile(String profileName) {
    _profiles.remove(profileName);
    notifyListeners();
  }
}
