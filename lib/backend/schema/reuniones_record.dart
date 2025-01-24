import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReunionesRecord extends FirestoreRecord {
  ReunionesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nombreCreador" field.
  String? _nombreCreador;
  String get nombreCreador => _nombreCreador ?? '';
  bool hasNombreCreador() => _nombreCreador != null;

  // "fechaReunion" field.
  DateTime? _fechaReunion;
  DateTime? get fechaReunion => _fechaReunion;
  bool hasFechaReunion() => _fechaReunion != null;

  // "asunto" field.
  String? _asunto;
  String get asunto => _asunto ?? '';
  bool hasAsunto() => _asunto != null;

  // "descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "estaActivo" field.
  bool? _estaActivo;
  bool get estaActivo => _estaActivo ?? false;
  bool hasEstaActivo() => _estaActivo != null;

  // "idReunion" field.
  int? _idReunion;
  int get idReunion => _idReunion ?? 0;
  bool hasIdReunion() => _idReunion != null;

  // "fechaCreacion" field.
  DateTime? _fechaCreacion;
  DateTime? get fechaCreacion => _fechaCreacion;
  bool hasFechaCreacion() => _fechaCreacion != null;

  void _initializeFields() {
    _nombreCreador = snapshotData['nombreCreador'] as String?;
    _fechaReunion = snapshotData['fechaReunion'] as DateTime?;
    _asunto = snapshotData['asunto'] as String?;
    _descripcion = snapshotData['descripcion'] as String?;
    _estaActivo = snapshotData['estaActivo'] as bool?;
    _idReunion = castToType<int>(snapshotData['idReunion']);
    _fechaCreacion = snapshotData['fechaCreacion'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Reuniones');

  static Stream<ReunionesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ReunionesRecord.fromSnapshot(s));

  static Future<ReunionesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ReunionesRecord.fromSnapshot(s));

  static ReunionesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ReunionesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ReunionesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ReunionesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ReunionesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ReunionesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createReunionesRecordData({
  String? nombreCreador,
  DateTime? fechaReunion,
  String? asunto,
  String? descripcion,
  bool? estaActivo,
  int? idReunion,
  DateTime? fechaCreacion,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombreCreador': nombreCreador,
      'fechaReunion': fechaReunion,
      'asunto': asunto,
      'descripcion': descripcion,
      'estaActivo': estaActivo,
      'idReunion': idReunion,
      'fechaCreacion': fechaCreacion,
    }.withoutNulls,
  );

  return firestoreData;
}

class ReunionesRecordDocumentEquality implements Equality<ReunionesRecord> {
  const ReunionesRecordDocumentEquality();

  @override
  bool equals(ReunionesRecord? e1, ReunionesRecord? e2) {
    return e1?.nombreCreador == e2?.nombreCreador &&
        e1?.fechaReunion == e2?.fechaReunion &&
        e1?.asunto == e2?.asunto &&
        e1?.descripcion == e2?.descripcion &&
        e1?.estaActivo == e2?.estaActivo &&
        e1?.idReunion == e2?.idReunion &&
        e1?.fechaCreacion == e2?.fechaCreacion;
  }

  @override
  int hash(ReunionesRecord? e) => const ListEquality().hash([
        e?.nombreCreador,
        e?.fechaReunion,
        e?.asunto,
        e?.descripcion,
        e?.estaActivo,
        e?.idReunion,
        e?.fechaCreacion
      ]);

  @override
  bool isValidKey(Object? o) => o is ReunionesRecord;
}
