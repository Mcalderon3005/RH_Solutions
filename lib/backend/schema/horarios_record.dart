import 'dart:async';

import '/backend/algolia/serialization_util.dart';
import '/backend/algolia/algolia_manager.dart';
import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HorariosRecord extends FirestoreRecord {
  HorariosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "HoraInicio" field.
  DateTime? _horaInicio;
  DateTime? get horaInicio => _horaInicio;
  bool hasHoraInicio() => _horaInicio != null;

  // "HoraFinal" field.
  DateTime? _horaFinal;
  DateTime? get horaFinal => _horaFinal;
  bool hasHoraFinal() => _horaFinal != null;

  // "Usuario" field.
  String? _usuario;
  String get usuario => _usuario ?? '';
  bool hasUsuario() => _usuario != null;

  void _initializeFields() {
    _horaInicio = snapshotData['HoraInicio'] as DateTime?;
    _horaFinal = snapshotData['HoraFinal'] as DateTime?;
    _usuario = snapshotData['Usuario'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Horarios');

  static Stream<HorariosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => HorariosRecord.fromSnapshot(s));

  static Future<HorariosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => HorariosRecord.fromSnapshot(s));

  static HorariosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      HorariosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static HorariosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      HorariosRecord._(reference, mapFromFirestore(data));

  static HorariosRecord fromAlgolia(AlgoliaObjectSnapshot snapshot) =>
      HorariosRecord.getDocumentFromData(
        {
          'HoraInicio': convertAlgoliaParam(
            snapshot.data['HoraInicio'],
            ParamType.DateTime,
            false,
          ),
          'HoraFinal': convertAlgoliaParam(
            snapshot.data['HoraFinal'],
            ParamType.DateTime,
            false,
          ),
          'Usuario': snapshot.data['Usuario'],
        },
        HorariosRecord.collection.doc(snapshot.objectID),
      );

  static Future<List<HorariosRecord>> search({
    String? term,
    FutureOr<LatLng>? location,
    int? maxResults,
    double? searchRadiusMeters,
    bool useCache = false,
  }) =>
      FFAlgoliaManager.instance
          .algoliaQuery(
            index: 'Horarios',
            term: term,
            maxResults: maxResults,
            location: location,
            searchRadiusMeters: searchRadiusMeters,
            useCache: useCache,
          )
          .then((r) => r.map(fromAlgolia).toList());

  @override
  String toString() =>
      'HorariosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is HorariosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createHorariosRecordData({
  DateTime? horaInicio,
  DateTime? horaFinal,
  String? usuario,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'HoraInicio': horaInicio,
      'HoraFinal': horaFinal,
      'Usuario': usuario,
    }.withoutNulls,
  );

  return firestoreData;
}

class HorariosRecordDocumentEquality implements Equality<HorariosRecord> {
  const HorariosRecordDocumentEquality();

  @override
  bool equals(HorariosRecord? e1, HorariosRecord? e2) {
    return e1?.horaInicio == e2?.horaInicio &&
        e1?.horaFinal == e2?.horaFinal &&
        e1?.usuario == e2?.usuario;
  }

  @override
  int hash(HorariosRecord? e) =>
      const ListEquality().hash([e?.horaInicio, e?.horaFinal, e?.usuario]);

  @override
  bool isValidKey(Object? o) => o is HorariosRecord;
}
