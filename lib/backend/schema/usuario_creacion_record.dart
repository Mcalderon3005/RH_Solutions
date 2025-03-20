import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsuarioCreacionRecord extends FirestoreRecord {
  UsuarioCreacionRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "usuarioCreador" field.
  String? _usuarioCreador;
  String get usuarioCreador => _usuarioCreador ?? '';
  bool hasUsuarioCreador() => _usuarioCreador != null;

  // "nuevoUsuario" field.
  String? _nuevoUsuario;
  String get nuevoUsuario => _nuevoUsuario ?? '';
  bool hasNuevoUsuario() => _nuevoUsuario != null;

  // "fechaCreacion" field.
  DateTime? _fechaCreacion;
  DateTime? get fechaCreacion => _fechaCreacion;
  bool hasFechaCreacion() => _fechaCreacion != null;

  void _initializeFields() {
    _usuarioCreador = snapshotData['usuarioCreador'] as String?;
    _nuevoUsuario = snapshotData['nuevoUsuario'] as String?;
    _fechaCreacion = snapshotData['fechaCreacion'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('usuarioCreacion');

  static Stream<UsuarioCreacionRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsuarioCreacionRecord.fromSnapshot(s));

  static Future<UsuarioCreacionRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsuarioCreacionRecord.fromSnapshot(s));

  static UsuarioCreacionRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UsuarioCreacionRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsuarioCreacionRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsuarioCreacionRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsuarioCreacionRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsuarioCreacionRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsuarioCreacionRecordData({
  String? usuarioCreador,
  String? nuevoUsuario,
  DateTime? fechaCreacion,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'usuarioCreador': usuarioCreador,
      'nuevoUsuario': nuevoUsuario,
      'fechaCreacion': fechaCreacion,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsuarioCreacionRecordDocumentEquality
    implements Equality<UsuarioCreacionRecord> {
  const UsuarioCreacionRecordDocumentEquality();

  @override
  bool equals(UsuarioCreacionRecord? e1, UsuarioCreacionRecord? e2) {
    return e1?.usuarioCreador == e2?.usuarioCreador &&
        e1?.nuevoUsuario == e2?.nuevoUsuario &&
        e1?.fechaCreacion == e2?.fechaCreacion;
  }

  @override
  int hash(UsuarioCreacionRecord? e) => const ListEquality()
      .hash([e?.usuarioCreador, e?.nuevoUsuario, e?.fechaCreacion]);

  @override
  bool isValidKey(Object? o) => o is UsuarioCreacionRecord;
}
