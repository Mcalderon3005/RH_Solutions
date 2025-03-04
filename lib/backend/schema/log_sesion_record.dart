import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LogSesionRecord extends FirestoreRecord {
  LogSesionRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "correo" field.
  String? _correo;
  String get correo => _correo ?? '';
  bool hasCorreo() => _correo != null;

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  bool hasTimestamp() => _timestamp != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  void _initializeFields() {
    _correo = snapshotData['correo'] as String?;
    _timestamp = snapshotData['timestamp'] as DateTime?;
    _location = snapshotData['location'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('logSesion');

  static Stream<LogSesionRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LogSesionRecord.fromSnapshot(s));

  static Future<LogSesionRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LogSesionRecord.fromSnapshot(s));

  static LogSesionRecord fromSnapshot(DocumentSnapshot snapshot) =>
      LogSesionRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LogSesionRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LogSesionRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LogSesionRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LogSesionRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLogSesionRecordData({
  String? correo,
  DateTime? timestamp,
  String? location,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'correo': correo,
      'timestamp': timestamp,
      'location': location,
    }.withoutNulls,
  );

  return firestoreData;
}

class LogSesionRecordDocumentEquality implements Equality<LogSesionRecord> {
  const LogSesionRecordDocumentEquality();

  @override
  bool equals(LogSesionRecord? e1, LogSesionRecord? e2) {
    return e1?.correo == e2?.correo &&
        e1?.timestamp == e2?.timestamp &&
        e1?.location == e2?.location;
  }

  @override
  int hash(LogSesionRecord? e) =>
      const ListEquality().hash([e?.correo, e?.timestamp, e?.location]);

  @override
  bool isValidKey(Object? o) => o is LogSesionRecord;
}
