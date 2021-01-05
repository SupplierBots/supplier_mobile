import 'package:flutter/foundation.dart';

class Runner with ChangeNotifier {
  int _activeInstanceIndex = -1;

  int get activeInstanceIndex => _activeInstanceIndex;

  void setActiveInstance(int index) {
    _activeInstanceIndex = index;
    notifyListeners();
  }
}
