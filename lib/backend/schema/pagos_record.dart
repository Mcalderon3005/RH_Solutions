import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PagosRecord extends FirestoreRecord {
  PagosRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "fechaCreacion" field.
  DateTime? _fechaCreacion;
  DateTime? get fechaCreacion => _fechaCreacion;
  bool hasFechaCreacion() => _fechaCreacion != null;

  void _initializeFields() {
    _fechaCreacion = snapshotData['fechaCreacion'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Pagos');

  static Stream<PagosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PagosRecord.fromSnapshot(s));

  static Future<PagosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PagosRecord.fromSnapshot(s));

  static PagosRecord fromSnapshot(DocumentSnapshot snapshot) => PagosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PagosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PagosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PagosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PagosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPagosRecordData({
  DateTime? fechaCreacion,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'fechaCreacion': fechaCreacion,
    }.withoutNulls,
  );

  return firestoreData;
}

class PagosRecordDocumentEquality implements Equality<PagosRecord> {
  const PagosRecordDocumentEquality();

  @override
  bool equals(PagosRecord? e1, PagosRecord? e2) {
    return e1?.fechaCreacion == e2?.fechaCreacion;
  }

  @override
  int hash(PagosRecord? e) => const ListEquality().hash([e?.fechaCreacion]);

  @override
  bool isValidKey(Object? o) => o is PagosRecord;
}
