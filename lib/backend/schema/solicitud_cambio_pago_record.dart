import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SolicitudCambioPagoRecord extends FirestoreRecord {
  SolicitudCambioPagoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Pago" field.
  DocumentReference? _pago;
  DocumentReference? get pago => _pago;
  bool hasPago() => _pago != null;

  // "Detalle" field.
  String? _detalle;
  String get detalle => _detalle ?? '';
  bool hasDetalle() => _detalle != null;

  // "FechaSolicitud" field.
  DateTime? _fechaSolicitud;
  DateTime? get fechaSolicitud => _fechaSolicitud;
  bool hasFechaSolicitud() => _fechaSolicitud != null;

  // "Nombre_Empleado" field.
  String? _nombreEmpleado;
  String get nombreEmpleado => _nombreEmpleado ?? '';
  bool hasNombreEmpleado() => _nombreEmpleado != null;

  // "Apellido_Empleado" field.
  String? _apellidoEmpleado;
  String get apellidoEmpleado => _apellidoEmpleado ?? '';
  bool hasApellidoEmpleado() => _apellidoEmpleado != null;

  // "Fecha_Pago" field.
  DateTime? _fechaPago;
  DateTime? get fechaPago => _fechaPago;
  bool hasFechaPago() => _fechaPago != null;

  // "Estado" field.
  bool? _estado;
  bool get estado => _estado ?? false;
  bool hasEstado() => _estado != null;

  // "IdUsuario" field.
  String? _idUsuario;
  String get idUsuario => _idUsuario ?? '';
  bool hasIdUsuario() => _idUsuario != null;

  void _initializeFields() {
    _pago = snapshotData['Pago'] as DocumentReference?;
    _detalle = snapshotData['Detalle'] as String?;
    _fechaSolicitud = snapshotData['FechaSolicitud'] as DateTime?;
    _nombreEmpleado = snapshotData['Nombre_Empleado'] as String?;
    _apellidoEmpleado = snapshotData['Apellido_Empleado'] as String?;
    _fechaPago = snapshotData['Fecha_Pago'] as DateTime?;
    _estado = snapshotData['Estado'] as bool?;
    _idUsuario = snapshotData['IdUsuario'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Solicitud_Cambio_Pago');

  static Stream<SolicitudCambioPagoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SolicitudCambioPagoRecord.fromSnapshot(s));

  static Future<SolicitudCambioPagoRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => SolicitudCambioPagoRecord.fromSnapshot(s));

  static SolicitudCambioPagoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SolicitudCambioPagoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SolicitudCambioPagoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SolicitudCambioPagoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SolicitudCambioPagoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SolicitudCambioPagoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSolicitudCambioPagoRecordData({
  DocumentReference? pago,
  String? detalle,
  DateTime? fechaSolicitud,
  String? nombreEmpleado,
  String? apellidoEmpleado,
  DateTime? fechaPago,
  bool? estado,
  String? idUsuario,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Pago': pago,
      'Detalle': detalle,
      'FechaSolicitud': fechaSolicitud,
      'Nombre_Empleado': nombreEmpleado,
      'Apellido_Empleado': apellidoEmpleado,
      'Fecha_Pago': fechaPago,
      'Estado': estado,
      'IdUsuario': idUsuario,
    }.withoutNulls,
  );

  return firestoreData;
}

class SolicitudCambioPagoRecordDocumentEquality
    implements Equality<SolicitudCambioPagoRecord> {
  const SolicitudCambioPagoRecordDocumentEquality();

  @override
  bool equals(SolicitudCambioPagoRecord? e1, SolicitudCambioPagoRecord? e2) {
    return e1?.pago == e2?.pago &&
        e1?.detalle == e2?.detalle &&
        e1?.fechaSolicitud == e2?.fechaSolicitud &&
        e1?.nombreEmpleado == e2?.nombreEmpleado &&
        e1?.apellidoEmpleado == e2?.apellidoEmpleado &&
        e1?.fechaPago == e2?.fechaPago &&
        e1?.estado == e2?.estado &&
        e1?.idUsuario == e2?.idUsuario;
  }

  @override
  int hash(SolicitudCambioPagoRecord? e) => const ListEquality().hash([
        e?.pago,
        e?.detalle,
        e?.fechaSolicitud,
        e?.nombreEmpleado,
        e?.apellidoEmpleado,
        e?.fechaPago,
        e?.estado,
        e?.idUsuario
      ]);

  @override
  bool isValidKey(Object? o) => o is SolicitudCambioPagoRecord;
}
