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

import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';

Future<String> loginUser() async {
  // Add your function code here!
  try {
    final User? user = FirebaseAuth.instance.currentUser;
    if (user == null) {
      return 'Error: Usuario no autenticado.';
    }

    // Obtener el documento del usuario en Firestore
    final DocumentSnapshot userDoc = await FirebaseFirestore.instance
        .collection('users')
        .doc(user.uid)
        .get();

    // Verificar si el documento existe y tiene un email
    if (!userDoc.exists || userDoc['email'] == null) {
      return 'Error: Usuario no encontrado en Firestore o sin email registrado.';
    }

    final String userEmail = userDoc['email'];

    // Configurar OneSignal con el UID y el email como alias
    await OneSignal.login(user.uid); // External User ID
    await OneSignal.User.addAlias("user_email", userEmail);

    // Mensaje de confirmación
    return 'OneSignal configurado correctamente para el usuario: ${user.uid} con email: $userEmail';
  } catch (e) {
    // Mensaje de error
    return 'Error en OneSignal login: $e';
  }
}
