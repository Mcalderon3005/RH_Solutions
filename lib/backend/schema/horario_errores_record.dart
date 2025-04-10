import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HorarioErroresRecord extends FirestoreRecord {
  HorarioErroresRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Usuario" field.
  String? _usuario;
  String get usuario => _usuario ?? '';
  bool hasUsuario() => _usuario != null;

  // "FechaActual" field.
  DateTime? _fechaActual;
  DateTime? get fechaActual => _fechaActual;
  bool hasFechaActual() => _fechaActual != null;

  // "DescripcionError" field.
  String? _descripcionError;
  String get descripcionError => _descripcionError ?? '';
  bool hasDescripcionError() => _descripcionError != null;

  // "HoraEstado" field.
  DateTime? _horaEstado;
  DateTime? get horaEstado => _horaEstado;
  bool hasHoraEstado() => _horaEstado != null;

  void _initializeFields() {
    _usuario = snapshotData['Usuario'] as String?;
    _fechaActual = snapshotData['FechaActual'] as DateTime?;
    _descripcionError = snapshotData['DescripcionError'] as String?;
    _horaEstado = snapshotData['HoraEstado'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('horarioErrores');

  static Stream<HorarioErroresRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => HorarioErroresRecord.fromSnapshot(s));

  static Future<HorarioErroresRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => HorarioErroresRecord.fromSnapshot(s));

  static HorarioErroresRecord fromSnapshot(DocumentSnapshot snapshot) =>
      HorarioErroresRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static HorarioErroresRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      HorarioErroresRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'HorarioErroresRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is HorarioErroresRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createHorarioErroresRecordData({
  String? usuario,
  DateTime? fechaActual,
  String? descripcionError,
  DateTime? horaEstado,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Usuario': usuario,
      'FechaActual': fechaActual,
      'DescripcionError': descripcionError,
      'HoraEstado': horaEstado,
    }.withoutNulls,
  );

  return firestoreData;
}

class HorarioErroresRecordDocumentEquality
    implements Equality<HorarioErroresRecord> {
  const HorarioErroresRecordDocumentEquality();

  @override
  bool equals(HorarioErroresRecord? e1, HorarioErroresRecord? e2) {
    return e1?.usuario == e2?.usuario &&
        e1?.fechaActual == e2?.fechaActual &&
        e1?.descripcionError == e2?.descripcionError &&
        e1?.horaEstado == e2?.horaEstado;
  }

  @override
  int hash(HorarioErroresRecord? e) => const ListEquality()
      .hash([e?.usuario, e?.fechaActual, e?.descripcionError, e?.horaEstado]);

  @override
  bool isValidKey(Object? o) => o is HorarioErroresRecord;
}
