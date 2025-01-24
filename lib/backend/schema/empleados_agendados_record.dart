import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EmpleadosAgendadosRecord extends FirestoreRecord {
  EmpleadosAgendadosRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('empleadosAgendados')
          : FirebaseFirestore.instance.collectionGroup('empleadosAgendados');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('empleadosAgendados').doc(id);

  static Stream<EmpleadosAgendadosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EmpleadosAgendadosRecord.fromSnapshot(s));

  static Future<EmpleadosAgendadosRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => EmpleadosAgendadosRecord.fromSnapshot(s));

  static EmpleadosAgendadosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EmpleadosAgendadosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EmpleadosAgendadosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EmpleadosAgendadosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EmpleadosAgendadosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EmpleadosAgendadosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEmpleadosAgendadosRecordData({
  String? email,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
    }.withoutNulls,
  );

  return firestoreData;
}

class EmpleadosAgendadosRecordDocumentEquality
    implements Equality<EmpleadosAgendadosRecord> {
  const EmpleadosAgendadosRecordDocumentEquality();

  @override
  bool equals(EmpleadosAgendadosRecord? e1, EmpleadosAgendadosRecord? e2) {
    return e1?.email == e2?.email;
  }

  @override
  int hash(EmpleadosAgendadosRecord? e) =>
      const ListEquality().hash([e?.email]);

  @override
  bool isValidKey(Object? o) => o is EmpleadosAgendadosRecord;
}
