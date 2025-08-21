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

Future<int> calcularDiasVacaciones(
  DateTime fechaInicio,
  DateTime fechaFinal,
) async {
  // Asegúrate de que fechaFinal sea posterior a fechaInicio.
  if (fechaFinal.isBefore(fechaInicio)) {
    // Puedes manejar este error como prefieras.
    // Aquí, devolveremos 0 días o lanzar un error.
    return 0;
  }

  // Calcula la diferencia entre las dos fechas.
  final Duration diferencia = fechaFinal.difference(fechaInicio);

  // Extrae el número total de días de la duración.
  // El método 'inDays' devuelve un entero.
  return diferencia.inDays;
}
