import 'package:flutter/foundation.dart';

class HomeConfig with ChangeNotifier, DiagnosticableTreeMixin {
  int _number = 0;

  int get number => _number;
  
  void setNumber(int _num) {
    _number = _num;
    notifyListeners();
  }
}
