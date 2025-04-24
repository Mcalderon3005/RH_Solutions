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

Future<String?> emptyColection(String coleccion) async {
  try {
    // Crea referencia a la colección usando el parámetro
    CollectionReference targetCollection =
        FirebaseFirestore.instance.collection(coleccion);

    QuerySnapshot querySnapshot = await targetCollection.get();

    if (querySnapshot.docs.isEmpty) {
      return 'No hay documentos para eliminar en $coleccion.';
    }

    for (var doc in querySnapshot.docs) {
      await targetCollection.doc(doc.id).delete();
    }

    return 'Todos los documentos en $coleccion fueron eliminados.';
  } catch (e) {
    return 'Error eliminando documentos de $coleccion: $e';
  }
}
