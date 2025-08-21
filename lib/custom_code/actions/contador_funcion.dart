// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:shared_preferences/shared_preferences.dart';

Future<int> contadorFuncion() async {
  // Obtener las preferencias compartidas
  final SharedPreferences prefs = await SharedPreferences.getInstance();

  // Intentar obtener el contador guardado, si no existe, devolver 0
  int contador = prefs.getInt('contador') ?? 0;

  // Incrementar el contador
  contador++;

  // Guardar el nuevo valor del contador
  await prefs.setInt('contador', contador);

  return contador;
}
