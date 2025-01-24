import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PagoSalarioRecord extends FirestoreRecord {
  PagoSalarioRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "fechaPago" field.
  DateTime? _fechaPago;
  DateTime? get fechaPago => _fechaPago;
  bool hasFechaPago() => _fechaPago != null;

  // "monto" field.
  double? _monto;
  double get monto => _monto ?? 0.0;
  bool hasMonto() => _monto != null;

  // "empleado" field.
  DocumentReference? _empleado;
  DocumentReference? get empleado => _empleado;
  bool hasEmpleado() => _empleado != null;

  // "comentarios" field.
  String? _comentarios;
  String get comentarios => _comentarios ?? '';
  bool hasComentarios() => _comentarios != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _fechaPago = snapshotData['fechaPago'] as DateTime?;
    _monto = castToType<double>(snapshotData['monto']);
    _empleado = snapshotData['empleado'] as DocumentReference?;
    _comentarios = snapshotData['comentarios'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('pagoSalario')
          : FirebaseFirestore.instance.collectionGroup('pagoSalario');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('pagoSalario').doc(id);

  static Stream<PagoSalarioRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PagoSalarioRecord.fromSnapshot(s));

  static Future<PagoSalarioRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PagoSalarioRecord.fromSnapshot(s));

  static PagoSalarioRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PagoSalarioRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PagoSalarioRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PagoSalarioRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PagoSalarioRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PagoSalarioRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPagoSalarioRecordData({
  DateTime? fechaPago,
  double? monto,
  DocumentReference? empleado,
  String? comentarios,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'fechaPago': fechaPago,
      'monto': monto,
      'empleado': empleado,
      'comentarios': comentarios,
    }.withoutNulls,
  );

  return firestoreData;
}

class PagoSalarioRecordDocumentEquality implements Equality<PagoSalarioRecord> {
  const PagoSalarioRecordDocumentEquality();

  @override
  bool equals(PagoSalarioRecord? e1, PagoSalarioRecord? e2) {
    return e1?.fechaPago == e2?.fechaPago &&
        e1?.monto == e2?.monto &&
        e1?.empleado == e2?.empleado &&
        e1?.comentarios == e2?.comentarios;
  }

  @override
  int hash(PagoSalarioRecord? e) => const ListEquality()
      .hash([e?.fechaPago, e?.monto, e?.empleado, e?.comentarios]);

  @override
  bool isValidKey(Object? o) => o is PagoSalarioRecord;
}
