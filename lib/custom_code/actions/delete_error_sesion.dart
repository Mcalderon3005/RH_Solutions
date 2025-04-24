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

import '/custom_code/actions/index.dart';
import '/flutter_flow/custom_functions.dart';

Future<String> deleteErrorSesion() async {
  // Add your function code here!
  try {
    // Get a reference to the Firestore collection
    CollectionReference logManagedErrorCollection =
        FirebaseFirestore.instance.collection('logManagedError');

    // Get all documents in the collection
    QuerySnapshot querySnapshot = await logManagedErrorCollection.get();

    // Check if there are documents to delete
    if (querySnapshot.docs.isEmpty) {
      return 'No documents to delete.';
    }

    // Delete each document
    for (var doc in querySnapshot.docs) {
      await logManagedErrorCollection.doc(doc.id).delete();
    }

    return 'All documents deleted successfully.';
  } catch (e) {
    return 'Error deleting documents: $e';
  }
}
