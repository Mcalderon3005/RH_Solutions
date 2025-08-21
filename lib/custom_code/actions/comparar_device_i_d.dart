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

Future<String> compararDeviceID(
  String? correo,
  String? currentDeviceId,
) async {
  if (correo == null || currentDeviceId == null) {
    return 'VacioNulo';
  }

  try {
    print('Buscando usuario con correo: $correo');
    print('Id del dispositivo: $currentDeviceId');
    // Buscar usuario por correo electrónico
    final querySnapshot = await FirebaseFirestore.instance
        .collection('users')
        .where('email', isEqualTo: correo)
        .limit(1)
        .get();

    if (querySnapshot.docs.isEmpty) {
      print('No se encontró usuario con ese correo.');
      return 'UsuarioVacio'; // Usuario no encontrado
    }

    print('Documentos encontrados: ${querySnapshot.docs.length}');
    final userDoc = querySnapshot.docs.first;
    print('Datos del usuario: ${userDoc.data()}');
    final data = userDoc.data() as Map<String, dynamic>;
    final serverDeviceID = data['IdDispositivo'];

    if (serverDeviceID == null || serverDeviceID == '') {
      return 'Vacio'; // No se ha guardado un device_id aún
    }

    if (serverDeviceID == currentDeviceId) {
      return 'Igual';
    } else {
      return 'Cambio';
    }
  } catch (e) {
    return 'Error: ${e.toString()}';
  }
}
