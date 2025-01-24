import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EmpleadoRecord extends FirestoreRecord {
  EmpleadoRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "apellidos" field.
  String? _apellidos;
  String get apellidos => _apellidos ?? '';
  bool hasApellidos() => _apellidos != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _email = snapshotData['email'] as String?;
    _apellidos = snapshotData['apellidos'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('empleado')
          : FirebaseFirestore.instance.collectionGroup('empleado');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('empleado').doc(id);

  static Stream<EmpleadoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EmpleadoRecord.fromSnapshot(s));

  static Future<EmpleadoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EmpleadoRecord.fromSnapshot(s));

  static EmpleadoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EmpleadoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EmpleadoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EmpleadoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EmpleadoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EmpleadoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEmpleadoRecordData({
  String? name,
  String? email,
  String? apellidos,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'email': email,
      'apellidos': apellidos,
    }.withoutNulls,
  );

  return firestoreData;
}

class EmpleadoRecordDocumentEquality implements Equality<EmpleadoRecord> {
  const EmpleadoRecordDocumentEquality();

  @override
  bool equals(EmpleadoRecord? e1, EmpleadoRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.email == e2?.email &&
        e1?.apellidos == e2?.apellidos;
  }

  @override
  int hash(EmpleadoRecord? e) =>
      const ListEquality().hash([e?.name, e?.email, e?.apellidos]);

  @override
  bool isValidKey(Object? o) => o is EmpleadoRecord;
}
