import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "role" field.
  String? _role;
  String get role => _role ?? '';
  bool hasRole() => _role != null;

  // "estaPresenteActividad" field.
  bool? _estaPresenteActividad;
  bool get estaPresenteActividad => _estaPresenteActividad ?? false;
  bool hasEstaPresenteActividad() => _estaPresenteActividad != null;

  // "estaPresenteReunion" field.
  bool? _estaPresenteReunion;
  bool get estaPresenteReunion => _estaPresenteReunion ?? false;
  bool hasEstaPresenteReunion() => _estaPresenteReunion != null;

  // "apellidos" field.
  String? _apellidos;
  String get apellidos => _apellidos ?? '';
  bool hasApellidos() => _apellidos != null;

  // "cargo" field.
  String? _cargo;
  String get cargo => _cargo ?? '';
  bool hasCargo() => _cargo != null;

  // "fechaContratacion" field.
  String? _fechaContratacion;
  String get fechaContratacion => _fechaContratacion ?? '';
  bool hasFechaContratacion() => _fechaContratacion != null;

  // "cedula" field.
  String? _cedula;
  String get cedula => _cedula ?? '';
  bool hasCedula() => _cedula != null;

  // "salario" field.
  double? _salario;
  double get salario => _salario ?? 0.0;
  bool hasSalario() => _salario != null;

  // "estaActivo" field.
  bool? _estaActivo;
  bool get estaActivo => _estaActivo ?? false;
  bool hasEstaActivo() => _estaActivo != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _role = snapshotData['role'] as String?;
    _estaPresenteActividad = snapshotData['estaPresenteActividad'] as bool?;
    _estaPresenteReunion = snapshotData['estaPresenteReunion'] as bool?;
    _apellidos = snapshotData['apellidos'] as String?;
    _cargo = snapshotData['cargo'] as String?;
    _fechaContratacion = snapshotData['fechaContratacion'] as String?;
    _cedula = snapshotData['cedula'] as String?;
    _salario = castToType<double>(snapshotData['salario']);
    _estaActivo = snapshotData['estaActivo'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? role,
  bool? estaPresenteActividad,
  bool? estaPresenteReunion,
  String? apellidos,
  String? cargo,
  String? fechaContratacion,
  String? cedula,
  double? salario,
  bool? estaActivo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'role': role,
      'estaPresenteActividad': estaPresenteActividad,
      'estaPresenteReunion': estaPresenteReunion,
      'apellidos': apellidos,
      'cargo': cargo,
      'fechaContratacion': fechaContratacion,
      'cedula': cedula,
      'salario': salario,
      'estaActivo': estaActivo,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.role == e2?.role &&
        e1?.estaPresenteActividad == e2?.estaPresenteActividad &&
        e1?.estaPresenteReunion == e2?.estaPresenteReunion &&
        e1?.apellidos == e2?.apellidos &&
        e1?.cargo == e2?.cargo &&
        e1?.fechaContratacion == e2?.fechaContratacion &&
        e1?.cedula == e2?.cedula &&
        e1?.salario == e2?.salario &&
        e1?.estaActivo == e2?.estaActivo;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.role,
        e?.estaPresenteActividad,
        e?.estaPresenteReunion,
        e?.apellidos,
        e?.cargo,
        e?.fechaContratacion,
        e?.cedula,
        e?.salario,
        e?.estaActivo
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
