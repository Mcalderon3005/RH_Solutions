import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ActividadesCalendarioRecord extends FirestoreRecord {
  ActividadesCalendarioRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Titulo" field.
  String? _titulo;
  String get titulo => _titulo ?? '';
  bool hasTitulo() => _titulo != null;

  // "Descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "Fecha" field.
  DateTime? _fecha;
  DateTime? get fecha => _fecha;
  bool hasFecha() => _fecha != null;

  // "Creador" field.
  String? _creador;
  String get creador => _creador ?? '';
  bool hasCreador() => _creador != null;

  // "FechaCreacion" field.
  DateTime? _fechaCreacion;
  DateTime? get fechaCreacion => _fechaCreacion;
  bool hasFechaCreacion() => _fechaCreacion != null;

  void _initializeFields() {
    _titulo = snapshotData['Titulo'] as String?;
    _descripcion = snapshotData['Descripcion'] as String?;
    _fecha = snapshotData['Fecha'] as DateTime?;
    _creador = snapshotData['Creador'] as String?;
    _fechaCreacion = snapshotData['FechaCreacion'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('actividadesCalendario');

  static Stream<ActividadesCalendarioRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => ActividadesCalendarioRecord.fromSnapshot(s));

  static Future<ActividadesCalendarioRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => ActividadesCalendarioRecord.fromSnapshot(s));

  static ActividadesCalendarioRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ActividadesCalendarioRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ActividadesCalendarioRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ActividadesCalendarioRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ActividadesCalendarioRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ActividadesCalendarioRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createActividadesCalendarioRecordData({
  String? titulo,
  String? descripcion,
  DateTime? fecha,
  String? creador,
  DateTime? fechaCreacion,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Titulo': titulo,
      'Descripcion': descripcion,
      'Fecha': fecha,
      'Creador': creador,
      'FechaCreacion': fechaCreacion,
    }.withoutNulls,
  );

  return firestoreData;
}

class ActividadesCalendarioRecordDocumentEquality
    implements Equality<ActividadesCalendarioRecord> {
  const ActividadesCalendarioRecordDocumentEquality();

  @override
  bool equals(
      ActividadesCalendarioRecord? e1, ActividadesCalendarioRecord? e2) {
    return e1?.titulo == e2?.titulo &&
        e1?.descripcion == e2?.descripcion &&
        e1?.fecha == e2?.fecha &&
        e1?.creador == e2?.creador &&
        e1?.fechaCreacion == e2?.fechaCreacion;
  }

  @override
  int hash(ActividadesCalendarioRecord? e) => const ListEquality().hash(
      [e?.titulo, e?.descripcion, e?.fecha, e?.creador, e?.fechaCreacion]);

  @override
  bool isValidKey(Object? o) => o is ActividadesCalendarioRecord;
}
