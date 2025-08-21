import 'dart:async';

import '/backend/algolia/serialization_util.dart';
import '/backend/algolia/algolia_manager.dart';
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

  // "nombre_empleado" field.
  String? _nombreEmpleado;
  String get nombreEmpleado => _nombreEmpleado ?? '';
  bool hasNombreEmpleado() => _nombreEmpleado != null;

  // "apellido_empleado" field.
  String? _apellidoEmpleado;
  String get apellidoEmpleado => _apellidoEmpleado ?? '';
  bool hasApellidoEmpleado() => _apellidoEmpleado != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  void _initializeFields() {
    _fechaCreacion = snapshotData['fechaCreacion'] as DateTime?;
    _detalle = snapshotData['detalle'] as String?;
    _monto = castToType<double>(snapshotData['monto']);
    _comprobanrte = snapshotData['comprobanrte'] as String?;
    _tipo = snapshotData['tipo'] as String?;
    _nombreEmpleado = snapshotData['nombre_empleado'] as String?;
    _apellidoEmpleado = snapshotData['apellido_empleado'] as String?;
    _uid = snapshotData['uid'] as String?;
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

  static PagosRecord fromAlgolia(AlgoliaObjectSnapshot snapshot) =>
      PagosRecord.getDocumentFromData(
        {
          'fechaCreacion': convertAlgoliaParam(
            snapshot.data['fechaCreacion'],
            ParamType.DateTime,
            false,
          ),
          'detalle': snapshot.data['detalle'],
          'monto': convertAlgoliaParam(
            snapshot.data['monto'],
            ParamType.double,
            false,
          ),
          'comprobanrte': snapshot.data['comprobanrte'],
          'tipo': snapshot.data['tipo'],
          'nombre_empleado': snapshot.data['nombre_empleado'],
          'apellido_empleado': snapshot.data['apellido_empleado'],
          'uid': snapshot.data['uid'],
        },
        PagosRecord.collection.doc(snapshot.objectID),
      );

  static Future<List<PagosRecord>> search({
    String? term,
    FutureOr<LatLng>? location,
    int? maxResults,
    double? searchRadiusMeters,
    bool useCache = false,
  }) =>
      FFAlgoliaManager.instance
          .algoliaQuery(
            index: 'Pagos',
            term: term,
            maxResults: maxResults,
            location: location,
            searchRadiusMeters: searchRadiusMeters,
            useCache: useCache,
          )
          .then((r) => r.map(fromAlgolia).toList());

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
  double? monto,
  String? comprobanrte,
  String? tipo,
  String? nombreEmpleado,
  String? apellidoEmpleado,
  String? uid,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'fechaCreacion': fechaCreacion,
      'detalle': detalle,
      'monto': monto,
      'comprobanrte': comprobanrte,
      'tipo': tipo,
      'nombre_empleado': nombreEmpleado,
      'apellido_empleado': apellidoEmpleado,
      'uid': uid,
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
        e1?.monto == e2?.monto &&
        e1?.comprobanrte == e2?.comprobanrte &&
        e1?.tipo == e2?.tipo &&
        e1?.nombreEmpleado == e2?.nombreEmpleado &&
        e1?.apellidoEmpleado == e2?.apellidoEmpleado &&
        e1?.uid == e2?.uid;
  }

  @override
  int hash(PagosRecord? e) => const ListEquality().hash([
        e?.fechaCreacion,
        e?.detalle,
        e?.monto,
        e?.comprobanrte,
        e?.tipo,
        e?.nombreEmpleado,
        e?.apellidoEmpleado,
        e?.uid
      ]);

  @override
  bool isValidKey(Object? o) => o is PagosRecord;
}
