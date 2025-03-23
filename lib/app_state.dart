import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _activePage = 'Dashboard';
  String get activePage => _activePage;
  set activePage(String value) {
    _activePage = value;
  }

  int _Uploading = 0;
  int get Uploading => _Uploading;
  set Uploading(int value) {
    _Uploading = value;
  }
}
