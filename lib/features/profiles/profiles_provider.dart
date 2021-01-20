import 'dart:collection';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:supplier_mobile/features/profiles/profile_model.dart';

class ProfilesProvider with ChangeNotifier {
  final GlobalKey<FormBuilderState> formKey = GlobalKey<FormBuilderState>();
  final Map<String, Profile> _profiles = <String, Profile>{};

  String _editedProfileName;
  bool _isModalOpen = false;

  bool get isEditing => _editedProfileName != null;
  bool get isCreatingNew => !profiles.containsKey(editedProfileName);
  String get editedProfileName => _editedProfileName;
  bool get isModalOpen => _isModalOpen;

  UnmodifiableMapView<String, Profile> get profiles =>
      UnmodifiableMapView<String, Profile>(_profiles);

  Map<String, dynamic> getInitialFormValues() {
    if (!profiles.containsKey(editedProfileName)) return null;
    return profiles[editedProfileName].toJson();
  }

  void saveEditedProfile() {
    if (!formKey.currentState.saveAndValidate()) return;
    _profiles[editedProfileName] = Profile.fromJson(formKey.currentState.value);
    stopEditing();
  }

  void removeProfile(String name) {
    _profiles.remove(name);
    notifyListeners();
  }

  void openModal() {
    _isModalOpen = true;
    notifyListeners();
  }

  void closeModal() {
    _isModalOpen = false;
    notifyListeners();
  }

  void setEditedProfile(String name) {
    _editedProfileName = name;
    notifyListeners();
  }

  void stopEditing() {
    _editedProfileName = null;
    formKey.currentState.reset();
    notifyListeners();
  }
}
