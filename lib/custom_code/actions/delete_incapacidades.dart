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

Future<String> deleteIncapacidades() async {
  // Add your function code here!
  try {
    // Get a reference to the Firestore collection
    CollectionReference incapacidadesCollection =
        FirebaseFirestore.instance.collection('Incapacidades');

    // Get all documents in the collection
    QuerySnapshot querySnapshot = await incapacidadesCollection.get();

    // Check if there are documents to delete
    if (querySnapshot.docs.isEmpty) {
      return 'No documents to delete.';
    }

    // Delete each document
    for (var doc in querySnapshot.docs) {
      await incapacidadesCollection.doc(doc.id).delete();
    }

    return 'All documents deleted successfully.';
  } catch (e) {
    // Return the error message if something goes wrong
    return 'Error deleting documents: $e';
  }
}
