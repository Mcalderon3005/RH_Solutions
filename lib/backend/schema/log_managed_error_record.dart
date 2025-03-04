import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LogManagedErrorRecord extends FirestoreRecord {
  LogManagedErrorRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "timeStamp" field.
  DateTime? _timeStamp;
  DateTime? get timeStamp => _timeStamp;
  bool hasTimeStamp() => _timeStamp != null;

  // "resumenAccion" field.
  String? _resumenAccion;
  String get resumenAccion => _resumenAccion ?? '';
  bool hasResumenAccion() => _resumenAccion != null;

  // "user" field.
  String? _user;
  String get user => _user ?? '';
  bool hasUser() => _user != null;

  void _initializeFields() {
    _timeStamp = snapshotData['timeStamp'] as DateTime?;
    _resumenAccion = snapshotData['resumenAccion'] as String?;
    _user = snapshotData['user'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('logManagedError');

  static Stream<LogManagedErrorRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LogManagedErrorRecord.fromSnapshot(s));

  static Future<LogManagedErrorRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LogManagedErrorRecord.fromSnapshot(s));

  static LogManagedErrorRecord fromSnapshot(DocumentSnapshot snapshot) =>
      LogManagedErrorRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LogManagedErrorRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LogManagedErrorRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LogManagedErrorRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LogManagedErrorRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLogManagedErrorRecordData({
  DateTime? timeStamp,
  String? resumenAccion,
  String? user,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'timeStamp': timeStamp,
      'resumenAccion': resumenAccion,
      'user': user,
    }.withoutNulls,
  );

  return firestoreData;
}

class LogManagedErrorRecordDocumentEquality
    implements Equality<LogManagedErrorRecord> {
  const LogManagedErrorRecordDocumentEquality();

  @override
  bool equals(LogManagedErrorRecord? e1, LogManagedErrorRecord? e2) {
    return e1?.timeStamp == e2?.timeStamp &&
        e1?.resumenAccion == e2?.resumenAccion &&
        e1?.user == e2?.user;
  }

  @override
  int hash(LogManagedErrorRecord? e) =>
      const ListEquality().hash([e?.timeStamp, e?.resumenAccion, e?.user]);

  @override
  bool isValidKey(Object? o) => o is LogManagedErrorRecord;
}
