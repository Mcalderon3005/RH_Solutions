import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReporteErroresRecord extends FirestoreRecord {
  ReporteErroresRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "descripcionError" field.
  String? _descripcionError;
  String get descripcionError => _descripcionError ?? '';
  bool hasDescripcionError() => _descripcionError != null;

  // "codigoCaso" field.
  String? _codigoCaso;
  String get codigoCaso => _codigoCaso ?? '';
  bool hasCodigoCaso() => _codigoCaso != null;

  // "estadoReporte" field.
  Estados? _estadoReporte;
  Estados? get estadoReporte => _estadoReporte;
  bool hasEstadoReporte() => _estadoReporte != null;

  // "creadoReporte" field.
  String? _creadoReporte;
  String get creadoReporte => _creadoReporte ?? '';
  bool hasCreadoReporte() => _creadoReporte != null;

  // "asignadoReporte" field.
  String? _asignadoReporte;
  String get asignadoReporte => _asignadoReporte ?? '';
  bool hasAsignadoReporte() => _asignadoReporte != null;

  // "comentarios" field.
  List<ComentariosStruct>? _comentarios;
  List<ComentariosStruct> get comentarios => _comentarios ?? const [];
  bool hasComentarios() => _comentarios != null;

  // "fechaCreacion" field.
  DateTime? _fechaCreacion;
  DateTime? get fechaCreacion => _fechaCreacion;
  bool hasFechaCreacion() => _fechaCreacion != null;

  // "fechaCompleto" field.
  DateTime? _fechaCompleto;
  DateTime? get fechaCompleto => _fechaCompleto;
  bool hasFechaCompleto() => _fechaCompleto != null;

  // "tituloError" field.
  String? _tituloError;
  String get tituloError => _tituloError ?? '';
  bool hasTituloError() => _tituloError != null;

  // "tipoError" field.
  TipoError? _tipoError;
  TipoError? get tipoError => _tipoError;
  bool hasTipoError() => _tipoError != null;

  // "estaActivo" field.
  bool? _estaActivo;
  bool get estaActivo => _estaActivo ?? false;
  bool hasEstaActivo() => _estaActivo != null;

  // "asignadoReporteRef" field.
  DocumentReference? _asignadoReporteRef;
  DocumentReference? get asignadoReporteRef => _asignadoReporteRef;
  bool hasAsignadoReporteRef() => _asignadoReporteRef != null;

  // "repuestaErrores" field.
  String? _repuestaErrores;
  String get repuestaErrores => _repuestaErrores ?? '';
  bool hasRepuestaErrores() => _repuestaErrores != null;

  void _initializeFields() {
    _descripcionError = snapshotData['descripcionError'] as String?;
    _codigoCaso = snapshotData['codigoCaso'] as String?;
    _estadoReporte = snapshotData['estadoReporte'] is Estados
        ? snapshotData['estadoReporte']
        : deserializeEnum<Estados>(snapshotData['estadoReporte']);
    _creadoReporte = snapshotData['creadoReporte'] as String?;
    _asignadoReporte = snapshotData['asignadoReporte'] as String?;
    _comentarios = getStructList(
      snapshotData['comentarios'],
      ComentariosStruct.fromMap,
    );
    _fechaCreacion = snapshotData['fechaCreacion'] as DateTime?;
    _fechaCompleto = snapshotData['fechaCompleto'] as DateTime?;
    _tituloError = snapshotData['tituloError'] as String?;
    _tipoError = snapshotData['tipoError'] is TipoError
        ? snapshotData['tipoError']
        : deserializeEnum<TipoError>(snapshotData['tipoError']);
    _estaActivo = snapshotData['estaActivo'] as bool?;
    _asignadoReporteRef =
        snapshotData['asignadoReporteRef'] as DocumentReference?;
    _repuestaErrores = snapshotData['repuestaErrores'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('reporteErrores');

  static Stream<ReporteErroresRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ReporteErroresRecord.fromSnapshot(s));

  static Future<ReporteErroresRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ReporteErroresRecord.fromSnapshot(s));

  static ReporteErroresRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ReporteErroresRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ReporteErroresRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ReporteErroresRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ReporteErroresRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ReporteErroresRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createReporteErroresRecordData({
  String? descripcionError,
  String? codigoCaso,
  Estados? estadoReporte,
  String? creadoReporte,
  String? asignadoReporte,
  DateTime? fechaCreacion,
  DateTime? fechaCompleto,
  String? tituloError,
  TipoError? tipoError,
  bool? estaActivo,
  DocumentReference? asignadoReporteRef,
  String? repuestaErrores,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'descripcionError': descripcionError,
      'codigoCaso': codigoCaso,
      'estadoReporte': estadoReporte,
      'creadoReporte': creadoReporte,
      'asignadoReporte': asignadoReporte,
      'fechaCreacion': fechaCreacion,
      'fechaCompleto': fechaCompleto,
      'tituloError': tituloError,
      'tipoError': tipoError,
      'estaActivo': estaActivo,
      'asignadoReporteRef': asignadoReporteRef,
      'repuestaErrores': repuestaErrores,
    }.withoutNulls,
  );

  return firestoreData;
}

class ReporteErroresRecordDocumentEquality
    implements Equality<ReporteErroresRecord> {
  const ReporteErroresRecordDocumentEquality();

  @override
  bool equals(ReporteErroresRecord? e1, ReporteErroresRecord? e2) {
    const listEquality = ListEquality();
    return e1?.descripcionError == e2?.descripcionError &&
        e1?.codigoCaso == e2?.codigoCaso &&
        e1?.estadoReporte == e2?.estadoReporte &&
        e1?.creadoReporte == e2?.creadoReporte &&
        e1?.asignadoReporte == e2?.asignadoReporte &&
        listEquality.equals(e1?.comentarios, e2?.comentarios) &&
        e1?.fechaCreacion == e2?.fechaCreacion &&
        e1?.fechaCompleto == e2?.fechaCompleto &&
        e1?.tituloError == e2?.tituloError &&
        e1?.tipoError == e2?.tipoError &&
        e1?.estaActivo == e2?.estaActivo &&
        e1?.asignadoReporteRef == e2?.asignadoReporteRef &&
        e1?.repuestaErrores == e2?.repuestaErrores;
  }

  @override
  int hash(ReporteErroresRecord? e) => const ListEquality().hash([
        e?.descripcionError,
        e?.codigoCaso,
        e?.estadoReporte,
        e?.creadoReporte,
        e?.asignadoReporte,
        e?.comentarios,
        e?.fechaCreacion,
        e?.fechaCompleto,
        e?.tituloError,
        e?.tipoError,
        e?.estaActivo,
        e?.asignadoReporteRef,
        e?.repuestaErrores
      ]);

  @override
  bool isValidKey(Object? o) => o is ReporteErroresRecord;
}
