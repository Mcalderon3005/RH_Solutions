import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LogActualizacionUsuariosRecord extends FirestoreRecord {
  LogActualizacionUsuariosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "usuarioActualizado" field.
  String? _usuarioActualizado;
  String get usuarioActualizado => _usuarioActualizado ?? '';
  bool hasUsuarioActualizado() => _usuarioActualizado != null;

  // "usuarioActualizador" field.
  String? _usuarioActualizador;
  String get usuarioActualizador => _usuarioActualizador ?? '';
  bool hasUsuarioActualizador() => _usuarioActualizador != null;

  // "fechaActualizacion" field.
  DateTime? _fechaActualizacion;
  DateTime? get fechaActualizacion => _fechaActualizacion;
  bool hasFechaActualizacion() => _fechaActualizacion != null;

  void _initializeFields() {
    _usuarioActualizado = snapshotData['usuarioActualizado'] as String?;
    _usuarioActualizador = snapshotData['usuarioActualizador'] as String?;
    _fechaActualizacion = snapshotData['fechaActualizacion'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('logActualizacionUsuarios');

  static Stream<LogActualizacionUsuariosRecord> getDocument(
          DocumentReference ref) =>
      ref
          .snapshots()
          .map((s) => LogActualizacionUsuariosRecord.fromSnapshot(s));

  static Future<LogActualizacionUsuariosRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => LogActualizacionUsuariosRecord.fromSnapshot(s));

  static LogActualizacionUsuariosRecord fromSnapshot(
          DocumentSnapshot snapshot) =>
      LogActualizacionUsuariosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LogActualizacionUsuariosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LogActualizacionUsuariosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LogActualizacionUsuariosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LogActualizacionUsuariosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLogActualizacionUsuariosRecordData({
  String? usuarioActualizado,
  String? usuarioActualizador,
  DateTime? fechaActualizacion,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'usuarioActualizado': usuarioActualizado,
      'usuarioActualizador': usuarioActualizador,
      'fechaActualizacion': fechaActualizacion,
    }.withoutNulls,
  );

  return firestoreData;
}

class LogActualizacionUsuariosRecordDocumentEquality
    implements Equality<LogActualizacionUsuariosRecord> {
  const LogActualizacionUsuariosRecordDocumentEquality();

  @override
  bool equals(
      LogActualizacionUsuariosRecord? e1, LogActualizacionUsuariosRecord? e2) {
    return e1?.usuarioActualizado == e2?.usuarioActualizado &&
        e1?.usuarioActualizador == e2?.usuarioActualizador &&
        e1?.fechaActualizacion == e2?.fechaActualizacion;
  }

  @override
  int hash(LogActualizacionUsuariosRecord? e) => const ListEquality().hash(
      [e?.usuarioActualizado, e?.usuarioActualizador, e?.fechaActualizacion]);

  @override
  bool isValidKey(Object? o) => o is LogActualizacionUsuariosRecord;
}
