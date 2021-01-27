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
  final Box<Profile> _profiles = Hive.box<Profile>(boxId);

  String _editedProfileName;
  bool _isModalOpen = false;

  bool get isEditing => _editedProfileName != null;
  String get editedProfileName => _editedProfileName;
  bool get isModalOpen => _isModalOpen;
  bool get isNotEmpty => _profiles.isNotEmpty;
  List<dynamic> get keys => _profiles.keys.toList();

  bool containsKey(String key) => _profiles.containsKey(key);

  Map<String, dynamic> getInitialFormValues() {
    if (!_profiles.containsKey(editedProfileName)) return null;
    return _profiles.get(editedProfileName).toJson();
  }

  void saveEditedProfile() {
    if (!formKey.currentState.saveAndValidate()) return;
    _profiles.put(
        editedProfileName, Profile.fromJson(formKey.currentState.value));
    stopEditing();
  }

  void removeProfile(String name) {
    _profiles.delete(name);
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

  @override
  void dispose() {
    _profiles.close();
    super.dispose();
  }
}
