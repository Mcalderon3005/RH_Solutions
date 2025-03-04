import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class IncapacidadesRecord extends FirestoreRecord {
  IncapacidadesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "comprobante" field.
  String? _comprobante;
  String get comprobante => _comprobante ?? '';
  bool hasComprobante() => _comprobante != null;

  // "fechaSubida" field.
  DateTime? _fechaSubida;
  DateTime? get fechaSubida => _fechaSubida;
  bool hasFechaSubida() => _fechaSubida != null;

  // "usuarioSolicitud" field.
  String? _usuarioSolicitud;
  String get usuarioSolicitud => _usuarioSolicitud ?? '';
  bool hasUsuarioSolicitud() => _usuarioSolicitud != null;

  // "fechaInicio" field.
  DateTime? _fechaInicio;
  DateTime? get fechaInicio => _fechaInicio;
  bool hasFechaInicio() => _fechaInicio != null;

  // "fechaFin" field.
  DateTime? _fechaFin;
  DateTime? get fechaFin => _fechaFin;
  bool hasFechaFin() => _fechaFin != null;

  // "comentarios" field.
  String? _comentarios;
  String get comentarios => _comentarios ?? '';
  bool hasComentarios() => _comentarios != null;

  // "correoSolicitante" field.
  String? _correoSolicitante;
  String get correoSolicitante => _correoSolicitante ?? '';
  bool hasCorreoSolicitante() => _correoSolicitante != null;

  // "tipoSolicitud" field.
  String? _tipoSolicitud;
  String get tipoSolicitud => _tipoSolicitud ?? '';
  bool hasTipoSolicitud() => _tipoSolicitud != null;

  // "estadoRevision" field.
  bool? _estadoRevision;
  bool get estadoRevision => _estadoRevision ?? false;
  bool hasEstadoRevision() => _estadoRevision != null;

  void _initializeFields() {
    _comprobante = snapshotData['comprobante'] as String?;
    _fechaSubida = snapshotData['fechaSubida'] as DateTime?;
    _usuarioSolicitud = snapshotData['usuarioSolicitud'] as String?;
    _fechaInicio = snapshotData['fechaInicio'] as DateTime?;
    _fechaFin = snapshotData['fechaFin'] as DateTime?;
    _comentarios = snapshotData['comentarios'] as String?;
    _correoSolicitante = snapshotData['correoSolicitante'] as String?;
    _tipoSolicitud = snapshotData['tipoSolicitud'] as String?;
    _estadoRevision = snapshotData['estadoRevision'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Incapacidades');

  static Stream<IncapacidadesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => IncapacidadesRecord.fromSnapshot(s));

  static Future<IncapacidadesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => IncapacidadesRecord.fromSnapshot(s));

  static IncapacidadesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      IncapacidadesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static IncapacidadesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      IncapacidadesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'IncapacidadesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is IncapacidadesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createIncapacidadesRecordData({
  String? comprobante,
  DateTime? fechaSubida,
  String? usuarioSolicitud,
  DateTime? fechaInicio,
  DateTime? fechaFin,
  String? comentarios,
  String? correoSolicitante,
  String? tipoSolicitud,
  bool? estadoRevision,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'comprobante': comprobante,
      'fechaSubida': fechaSubida,
      'usuarioSolicitud': usuarioSolicitud,
      'fechaInicio': fechaInicio,
      'fechaFin': fechaFin,
      'comentarios': comentarios,
      'correoSolicitante': correoSolicitante,
      'tipoSolicitud': tipoSolicitud,
      'estadoRevision': estadoRevision,
    }.withoutNulls,
  );

  return firestoreData;
}

class IncapacidadesRecordDocumentEquality
    implements Equality<IncapacidadesRecord> {
  const IncapacidadesRecordDocumentEquality();

  @override
  bool equals(IncapacidadesRecord? e1, IncapacidadesRecord? e2) {
    return e1?.comprobante == e2?.comprobante &&
        e1?.fechaSubida == e2?.fechaSubida &&
        e1?.usuarioSolicitud == e2?.usuarioSolicitud &&
        e1?.fechaInicio == e2?.fechaInicio &&
        e1?.fechaFin == e2?.fechaFin &&
        e1?.comentarios == e2?.comentarios &&
        e1?.correoSolicitante == e2?.correoSolicitante &&
        e1?.tipoSolicitud == e2?.tipoSolicitud &&
        e1?.estadoRevision == e2?.estadoRevision;
  }

  @override
  int hash(IncapacidadesRecord? e) => const ListEquality().hash([
        e?.comprobante,
        e?.fechaSubida,
        e?.usuarioSolicitud,
        e?.fechaInicio,
        e?.fechaFin,
        e?.comentarios,
        e?.correoSolicitante,
        e?.tipoSolicitud,
        e?.estadoRevision
      ]);

  @override
  bool isValidKey(Object? o) => o is IncapacidadesRecord;
}
