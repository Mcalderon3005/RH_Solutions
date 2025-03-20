import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PagosRecord extends FirestoreRecord {
  PagosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "fechaCreacion" field.
  DateTime? _fechaCreacion;
  DateTime? get fechaCreacion => _fechaCreacion;
  bool hasFechaCreacion() => _fechaCreacion != null;

  // "detalle" field.
  String? _detalle;
  String get detalle => _detalle ?? '';
  bool hasDetalle() => _detalle != null;

  // "empleado" field.
  String? _empleado;
  String get empleado => _empleado ?? '';
  bool hasEmpleado() => _empleado != null;

  // "monto" field.
  double? _monto;
  double get monto => _monto ?? 0.0;
  bool hasMonto() => _monto != null;

  // "comprobanrte" field.
  String? _comprobanrte;
  String get comprobanrte => _comprobanrte ?? '';
  bool hasComprobanrte() => _comprobanrte != null;

  // "tipo" field.
  String? _tipo;
  String get tipo => _tipo ?? '';
  bool hasTipo() => _tipo != null;

  void _initializeFields() {
    _fechaCreacion = snapshotData['fechaCreacion'] as DateTime?;
    _detalle = snapshotData['detalle'] as String?;
    _empleado = snapshotData['empleado'] as String?;
    _monto = castToType<double>(snapshotData['monto']);
    _comprobanrte = snapshotData['comprobanrte'] as String?;
    _tipo = snapshotData['tipo'] as String?;
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
  String? detalle,
  String? empleado,
  double? monto,
  String? comprobanrte,
  String? tipo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'fechaCreacion': fechaCreacion,
      'detalle': detalle,
      'empleado': empleado,
      'monto': monto,
      'comprobanrte': comprobanrte,
      'tipo': tipo,
    }.withoutNulls,
  );

  return firestoreData;
}

class PagosRecordDocumentEquality implements Equality<PagosRecord> {
  const PagosRecordDocumentEquality();

  @override
  bool equals(PagosRecord? e1, PagosRecord? e2) {
    return e1?.fechaCreacion == e2?.fechaCreacion &&
        e1?.detalle == e2?.detalle &&
        e1?.empleado == e2?.empleado &&
        e1?.monto == e2?.monto &&
        e1?.comprobanrte == e2?.comprobanrte &&
        e1?.tipo == e2?.tipo;
  }

  @override
  int hash(PagosRecord? e) => const ListEquality().hash([
        e?.fechaCreacion,
        e?.detalle,
        e?.empleado,
        e?.monto,
        e?.comprobanrte,
        e?.tipo
      ]);

  @override
  bool isValidKey(Object? o) => o is PagosRecord;
}
