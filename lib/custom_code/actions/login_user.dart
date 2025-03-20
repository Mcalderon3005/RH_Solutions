// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:firebase_auth/firebase_auth.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';

Future<void> loginUser() async {
  try {
    final User? user = FirebaseAuth.instance.currentUser;

    // Verificar si el usuario está autenticado y tiene email
    if (user == null || user.email == null) {
      print('Usuario no autenticado o sin email registrado');
      return;
    }

    final String userEmail = user.email!;

    // Configurar OneSignal con el email como alias
    await OneSignal.login(user.uid); // External User ID sigue siendo el UID
    await OneSignal.User.addAlias("user_email", userEmail);

    print('Alias configurado con email: $userEmail');
  } catch (e) {
    print('Error en login de OneSignal: $e');
  }
}
