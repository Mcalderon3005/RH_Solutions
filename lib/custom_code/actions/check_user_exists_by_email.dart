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

import 'package:cloud_firestore/cloud_firestore.dart';

Future<bool> checkUserExistsByEmail(String email) async {
  // Reference to the Firestore collection
  CollectionReference users = FirebaseFirestore.instance.collection('users');

  try {
    // Query the collection for the email
    QuerySnapshot querySnapshot =
        await users.where('email', isEqualTo: email).get();

    // Check if any documents were returned
    return querySnapshot.docs.isNotEmpty;
  } catch (e) {
    // Handle any errors that occur during the query
    print('Error checking user existence: $e');
    return false; // Return false in case of an error
  }
}
