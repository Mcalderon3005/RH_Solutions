import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _fechaFiltro = prefs.containsKey('ff_fechaFiltro')
          ? DateTime.fromMillisecondsSinceEpoch(prefs.getInt('ff_fechaFiltro')!)
          : _fechaFiltro;
    });
    _safeInit(() {
      _inicioHorario = prefs.containsKey('ff_inicioHorario')
          ? DateTime.fromMillisecondsSinceEpoch(
              prefs.getInt('ff_inicioHorario')!)
          : _inicioHorario;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _busqueda = '';
  String get busqueda => _busqueda;
  set busqueda(String value) {
    _busqueda = value;
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

  DateTime? _fechaFiltro;
  DateTime? get fechaFiltro => _fechaFiltro;
  set fechaFiltro(DateTime? value) {
    _fechaFiltro = value;
    value != null
        ? prefs.setInt('ff_fechaFiltro', value.millisecondsSinceEpoch)
        : prefs.remove('ff_fechaFiltro');
  }

  DateTime? _fechaNacimineto;
  DateTime? get fechaNacimineto => _fechaNacimineto;
  set fechaNacimineto(DateTime? value) {
    _fechaNacimineto = value;
  }

  DateTime? _fechaContratacion;
  DateTime? get fechaContratacion => _fechaContratacion;
  set fechaContratacion(DateTime? value) {
    _fechaContratacion = value;
  }

  String _buscarActividad = '';
  String get buscarActividad => _buscarActividad;
  set buscarActividad(String value) {
    _buscarActividad = value;
  }

  DateTime? _inicioHorario;
  DateTime? get inicioHorario => _inicioHorario;
  set inicioHorario(DateTime? value) {
    _inicioHorario = value;
    value != null
        ? prefs.setInt('ff_inicioHorario', value.millisecondsSinceEpoch)
        : prefs.remove('ff_inicioHorario');
  }

  bool _isListaCompleta = true;
  bool get isListaCompleta => _isListaCompleta;
  set isListaCompleta(bool value) {
    _isListaCompleta = value;
  }
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
