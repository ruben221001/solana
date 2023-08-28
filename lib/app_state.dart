import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _usuarioos = prefs.getString('ff_usuarioos') ?? _usuarioos;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _activeChat = 'activeChat';
  String get activeChat => _activeChat;
  set activeChat(String _value) {
    _activeChat = _value;
  }

  String _usuarios = '';
  String get usuarios => _usuarios;
  set usuarios(String _value) {
    _usuarios = _value;
  }

  String _usuarioos = '';
  String get usuarioos => _usuarioos;
  set usuarioos(String _value) {
    _usuarioos = _value;
    prefs.setString('ff_usuarioos', _value);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
