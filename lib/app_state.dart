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

  String _busqueda = '';
  String get busqueda => _busqueda;
  set busqueda(String value) {
    _busqueda = value;
  }

  DateTime? _fechaNacimiento;
  DateTime? get fechaNacimiento => _fechaNacimiento;
  set fechaNacimiento(DateTime? value) {
    _fechaNacimiento = value;
  }

  DateTime? _fechaContratacion;
  DateTime? get fechaContratacion => _fechaContratacion;
  set fechaContratacion(DateTime? value) {
    _fechaContratacion = value;
  }

  String _logSesion = '';
  String get logSesion => _logSesion;
  set logSesion(String value) {
    _logSesion = value;
  }

  String _logerror = '';
  String get logerror => _logerror;
  set logerror(String value) {
    _logerror = value;
  }

  DateTime? _fechaInicio;
  DateTime? get fechaInicio => _fechaInicio;
  set fechaInicio(DateTime? value) {
    _fechaInicio = value;
  }

  DateTime? _fechaFin;
  DateTime? get fechaFin => _fechaFin;
  set fechaFin(DateTime? value) {
    _fechaFin = value;
  }
}
