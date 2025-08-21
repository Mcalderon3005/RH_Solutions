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

import 'package:onesignal_flutter/onesignal_flutter.dart';

Future<String> getOnesignalUserInfo() async {
  try {
    // Obtener el external ID del usuario
    final String? externalUserId = await OneSignal.User.getExternalId();

    // Obtener los tags (etiquetas) del usuario
    final Map<dynamic, dynamic>? tags = await OneSignal.User.getTags();

    // Verificar si se obtuvieron datos
    if (externalUserId == null && tags == null) {
      return 'No se encontró información del usuario en OneSignal.';
    }

    // Construir el mensaje con la información
    String informacion = 'Información del usuario en OneSignal:\n';
    informacion += 'External ID: ${externalUserId ?? "No disponible"}\n';
    informacion += 'Tags (Etiquetas):\n';

    if (tags != null && tags.isNotEmpty) {
      tags.forEach((key, value) {
        informacion += '  - $key: $value\n';
      });
    } else {
      informacion += '  No hay tags registrados.\n';
    }

    return informacion;
  } catch (e) {
    return 'Error al obtener la información del usuario de OneSignal: $e';
  }
}
