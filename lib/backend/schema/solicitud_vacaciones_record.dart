import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SolicitudVacacionesRecord extends FirestoreRecord {
  SolicitudVacacionesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "fechaSolicitud" field.
  DateTime? _fechaSolicitud;
  DateTime? get fechaSolicitud => _fechaSolicitud;
  bool hasFechaSolicitud() => _fechaSolicitud != null;

  // "fechaInicio" field.
  DateTime? _fechaInicio;
  DateTime? get fechaInicio => _fechaInicio;
  bool hasFechaInicio() => _fechaInicio != null;

  // "comentarios" field.
  String? _comentarios;
  String get comentarios => _comentarios ?? '';
  bool hasComentarios() => _comentarios != null;

  // "empleadoNombre" field.
  String? _empleadoNombre;
  String get empleadoNombre => _empleadoNombre ?? '';
  bool hasEmpleadoNombre() => _empleadoNombre != null;

  // "empleadoCorreo" field.
  String? _empleadoCorreo;
  String get empleadoCorreo => _empleadoCorreo ?? '';
  bool hasEmpleadoCorreo() => _empleadoCorreo != null;

  // "estadoAprobacion" field.
  bool? _estadoAprobacion;
  bool get estadoAprobacion => _estadoAprobacion ?? false;
  bool hasEstadoAprobacion() => _estadoAprobacion != null;

  // "estadoRevision" field.
  bool? _estadoRevision;
  bool get estadoRevision => _estadoRevision ?? false;
  bool hasEstadoRevision() => _estadoRevision != null;

  // "fechaFin" field.
  DateTime? _fechaFin;
  DateTime? get fechaFin => _fechaFin;
  bool hasFechaFin() => _fechaFin != null;

  // "tipoSolicitudes" field.
  String? _tipoSolicitudes;
  String get tipoSolicitudes => _tipoSolicitudes ?? '';
  bool hasTipoSolicitudes() => _tipoSolicitudes != null;

  void _initializeFields() {
    _fechaSolicitud = snapshotData['fechaSolicitud'] as DateTime?;
    _fechaInicio = snapshotData['fechaInicio'] as DateTime?;
    _comentarios = snapshotData['comentarios'] as String?;
    _empleadoNombre = snapshotData['empleadoNombre'] as String?;
    _empleadoCorreo = snapshotData['empleadoCorreo'] as String?;
    _estadoAprobacion = snapshotData['estadoAprobacion'] as bool?;
    _estadoRevision = snapshotData['estadoRevision'] as bool?;
    _fechaFin = snapshotData['fechaFin'] as DateTime?;
    _tipoSolicitudes = snapshotData['tipoSolicitudes'] as String?;
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
  DateTime? fechaInicio,
  String? comentarios,
  String? empleadoNombre,
  String? empleadoCorreo,
  bool? estadoAprobacion,
  bool? estadoRevision,
  DateTime? fechaFin,
  String? tipoSolicitudes,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'fechaSolicitud': fechaSolicitud,
      'fechaInicio': fechaInicio,
      'comentarios': comentarios,
      'empleadoNombre': empleadoNombre,
      'empleadoCorreo': empleadoCorreo,
      'estadoAprobacion': estadoAprobacion,
      'estadoRevision': estadoRevision,
      'fechaFin': fechaFin,
      'tipoSolicitudes': tipoSolicitudes,
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
        e1?.fechaInicio == e2?.fechaInicio &&
        e1?.comentarios == e2?.comentarios &&
        e1?.empleadoNombre == e2?.empleadoNombre &&
        e1?.empleadoCorreo == e2?.empleadoCorreo &&
        e1?.estadoAprobacion == e2?.estadoAprobacion &&
        e1?.estadoRevision == e2?.estadoRevision &&
        e1?.fechaFin == e2?.fechaFin &&
        e1?.tipoSolicitudes == e2?.tipoSolicitudes;
  }

  @override
  int hash(SolicitudVacacionesRecord? e) => const ListEquality().hash([
        e?.fechaSolicitud,
        e?.fechaInicio,
        e?.comentarios,
        e?.empleadoNombre,
        e?.empleadoCorreo,
        e?.estadoAprobacion,
        e?.estadoRevision,
        e?.fechaFin,
        e?.tipoSolicitudes
      ]);

  @override
  bool isValidKey(Object? o) => o is SolicitudVacacionesRecord;
}
