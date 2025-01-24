import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SolicitudVacacionesRecord extends FirestoreRecord {
  SolicitudVacacionesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "fechaSolicitud" field.
  DateTime? _fechaSolicitud;
  DateTime? get fechaSolicitud => _fechaSolicitud;
  bool hasFechaSolicitud() => _fechaSolicitud != null;

  // "diasSolicitados" field.
  int? _diasSolicitados;
  int get diasSolicitados => _diasSolicitados ?? 0;
  bool hasDiasSolicitados() => _diasSolicitados != null;

  // "fechaInicio" field.
  DateTime? _fechaInicio;
  DateTime? get fechaInicio => _fechaInicio;
  bool hasFechaInicio() => _fechaInicio != null;

  // "fechaFin" field.
  DateTime? _fechaFin;
  DateTime? get fechaFin => _fechaFin;
  bool hasFechaFin() => _fechaFin != null;

  // "aprobado" field.
  bool? _aprobado;
  bool get aprobado => _aprobado ?? false;
  bool hasAprobado() => _aprobado != null;

  // "comentarios" field.
  String? _comentarios;
  String get comentarios => _comentarios ?? '';
  bool hasComentarios() => _comentarios != null;

  void _initializeFields() {
    _fechaSolicitud = snapshotData['fechaSolicitud'] as DateTime?;
    _diasSolicitados = castToType<int>(snapshotData['diasSolicitados']);
    _fechaInicio = snapshotData['fechaInicio'] as DateTime?;
    _fechaFin = snapshotData['fechaFin'] as DateTime?;
    _aprobado = snapshotData['aprobado'] as bool?;
    _comentarios = snapshotData['comentarios'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('solicitud_vacaciones');

  static Stream<SolicitudVacacionesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SolicitudVacacionesRecord.fromSnapshot(s));

  static Future<SolicitudVacacionesRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => SolicitudVacacionesRecord.fromSnapshot(s));

  static SolicitudVacacionesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SolicitudVacacionesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SolicitudVacacionesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SolicitudVacacionesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SolicitudVacacionesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SolicitudVacacionesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSolicitudVacacionesRecordData({
  DateTime? fechaSolicitud,
  int? diasSolicitados,
  DateTime? fechaInicio,
  DateTime? fechaFin,
  bool? aprobado,
  String? comentarios,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'fechaSolicitud': fechaSolicitud,
      'diasSolicitados': diasSolicitados,
      'fechaInicio': fechaInicio,
      'fechaFin': fechaFin,
      'aprobado': aprobado,
      'comentarios': comentarios,
    }.withoutNulls,
  );

  return firestoreData;
}

class SolicitudVacacionesRecordDocumentEquality
    implements Equality<SolicitudVacacionesRecord> {
  const SolicitudVacacionesRecordDocumentEquality();

  @override
  bool equals(SolicitudVacacionesRecord? e1, SolicitudVacacionesRecord? e2) {
    return e1?.fechaSolicitud == e2?.fechaSolicitud &&
        e1?.diasSolicitados == e2?.diasSolicitados &&
        e1?.fechaInicio == e2?.fechaInicio &&
        e1?.fechaFin == e2?.fechaFin &&
        e1?.aprobado == e2?.aprobado &&
        e1?.comentarios == e2?.comentarios;
  }

  @override
  int hash(SolicitudVacacionesRecord? e) => const ListEquality().hash([
        e?.fechaSolicitud,
        e?.diasSolicitados,
        e?.fechaInicio,
        e?.fechaFin,
        e?.aprobado,
        e?.comentarios
      ]);

  @override
  bool isValidKey(Object? o) => o is SolicitudVacacionesRecord;
}
