import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:hive/hive.dart';
import 'package:supplier_mobile/features/profiles/profile_model.dart';

final ChangeNotifierProvider<ProfilesProvider> profilesProvider =
    ChangeNotifierProvider<ProfilesProvider>(
        (ProviderReference ref) => ProfilesProvider());

class ProfilesProvider with ChangeNotifier {
  static String boxId = 'profiles';
  final GlobalKey<FormBuilderState> formKey = GlobalKey<FormBuilderState>();
  final Box<Profile> profiles = Hive.box<Profile>(boxId);

  String _editedProfileName;
  bool _isModalOpen = false;

  bool get isEditing => _editedProfileName != null;
  bool get isCreatingNew => !profiles.containsKey(editedProfileName);
  String get editedProfileName => _editedProfileName;
  bool get isModalOpen => _isModalOpen;

  Map<String, dynamic> getInitialFormValues() {
    if (!profiles.containsKey(editedProfileName)) return null;
    return profiles.get(editedProfileName).toJson();
  }

  void saveEditedProfile() {
    if (!formKey.currentState.saveAndValidate()) return;
    profiles.put(
        editedProfileName, Profile.fromJson(formKey.currentState.value));
    stopEditing();
  }

  void removeProfile(String name) {
    profiles.delete(name);
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
