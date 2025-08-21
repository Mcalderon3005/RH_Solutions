import 'dart:async';

import '/backend/algolia/serialization_util.dart';
import '/backend/algolia/algolia_manager.dart';
import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
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

  // "fechaNacimiento" field.
  DateTime? _fechaNacimiento;
  DateTime? get fechaNacimiento => _fechaNacimiento;
  bool hasFechaNacimiento() => _fechaNacimiento != null;

  // "fecahContratacion" field.
  DateTime? _fecahContratacion;
  DateTime? get fecahContratacion => _fecahContratacion;
  bool hasFecahContratacion() => _fecahContratacion != null;

  // "Vacaciones" field.
  int? _vacaciones;
  int get vacaciones => _vacaciones ?? 0;
  bool hasVacaciones() => _vacaciones != null;

  // "VacacionesUsadas" field.
  int? _vacacionesUsadas;
  int get vacacionesUsadas => _vacacionesUsadas ?? 0;
  bool hasVacacionesUsadas() => _vacacionesUsadas != null;

  // "IsLoggedIn" field.
  bool? _isLoggedIn;
  bool get isLoggedIn => _isLoggedIn ?? false;
  bool hasIsLoggedIn() => _isLoggedIn != null;

  // "LastLogin" field.
  DateTime? _lastLogin;
  DateTime? get lastLogin => _lastLogin;
  bool hasLastLogin() => _lastLogin != null;

  // "IdDispositivo" field.
  String? _idDispositivo;
  String get idDispositivo => _idDispositivo ?? '';
  bool hasIdDispositivo() => _idDispositivo != null;

  // "TiempoSesion" field.
  DateTime? _tiempoSesion;
  DateTime? get tiempoSesion => _tiempoSesion;
  bool hasTiempoSesion() => _tiempoSesion != null;

  // "timerSesionEstado" field.
  bool? _timerSesionEstado;
  bool get timerSesionEstado => _timerSesionEstado ?? false;
  bool hasTimerSesionEstado() => _timerSesionEstado != null;

  // "vacacionesAdicionales" field.
  int? _vacacionesAdicionales;
  int get vacacionesAdicionales => _vacacionesAdicionales ?? 0;
  bool hasVacacionesAdicionales() => _vacacionesAdicionales != null;

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
    _cedula = snapshotData['cedula'] as String?;
    _salario = castToType<double>(snapshotData['salario']);
    _estaActivo = snapshotData['estaActivo'] as bool?;
    _fechaNacimiento = snapshotData['fechaNacimiento'] as DateTime?;
    _fecahContratacion = snapshotData['fecahContratacion'] as DateTime?;
    _vacaciones = castToType<int>(snapshotData['Vacaciones']);
    _vacacionesUsadas = castToType<int>(snapshotData['VacacionesUsadas']);
    _isLoggedIn = snapshotData['IsLoggedIn'] as bool?;
    _lastLogin = snapshotData['LastLogin'] as DateTime?;
    _idDispositivo = snapshotData['IdDispositivo'] as String?;
    _tiempoSesion = snapshotData['TiempoSesion'] as DateTime?;
    _timerSesionEstado = snapshotData['timerSesionEstado'] as bool?;
    _vacacionesAdicionales =
        castToType<int>(snapshotData['vacacionesAdicionales']);
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

  static UsersRecord fromAlgolia(AlgoliaObjectSnapshot snapshot) =>
      UsersRecord.getDocumentFromData(
        {
          'email': snapshot.data['email'],
          'display_name': snapshot.data['display_name'],
          'photo_url': snapshot.data['photo_url'],
          'uid': snapshot.data['uid'],
          'created_time': convertAlgoliaParam(
            snapshot.data['created_time'],
            ParamType.DateTime,
            false,
          ),
          'phone_number': snapshot.data['phone_number'],
          'role': snapshot.data['role'],
          'estaPresenteActividad': snapshot.data['estaPresenteActividad'],
          'estaPresenteReunion': snapshot.data['estaPresenteReunion'],
          'apellidos': snapshot.data['apellidos'],
          'cargo': snapshot.data['cargo'],
          'cedula': snapshot.data['cedula'],
          'salario': convertAlgoliaParam(
            snapshot.data['salario'],
            ParamType.double,
            false,
          ),
          'estaActivo': snapshot.data['estaActivo'],
          'fechaNacimiento': convertAlgoliaParam(
            snapshot.data['fechaNacimiento'],
            ParamType.DateTime,
            false,
          ),
          'fecahContratacion': convertAlgoliaParam(
            snapshot.data['fecahContratacion'],
            ParamType.DateTime,
            false,
          ),
          'Vacaciones': convertAlgoliaParam(
            snapshot.data['Vacaciones'],
            ParamType.int,
            false,
          ),
          'VacacionesUsadas': convertAlgoliaParam(
            snapshot.data['VacacionesUsadas'],
            ParamType.int,
            false,
          ),
          'IsLoggedIn': snapshot.data['IsLoggedIn'],
          'LastLogin': convertAlgoliaParam(
            snapshot.data['LastLogin'],
            ParamType.DateTime,
            false,
          ),
          'IdDispositivo': snapshot.data['IdDispositivo'],
          'TiempoSesion': convertAlgoliaParam(
            snapshot.data['TiempoSesion'],
            ParamType.DateTime,
            false,
          ),
          'timerSesionEstado': snapshot.data['timerSesionEstado'],
          'vacacionesAdicionales': convertAlgoliaParam(
            snapshot.data['vacacionesAdicionales'],
            ParamType.int,
            false,
          ),
        },
        UsersRecord.collection.doc(snapshot.objectID),
      );

  static Future<List<UsersRecord>> search({
    String? term,
    FutureOr<LatLng>? location,
    int? maxResults,
    double? searchRadiusMeters,
    bool useCache = false,
  }) =>
      FFAlgoliaManager.instance
          .algoliaQuery(
            index: 'users',
            term: term,
            maxResults: maxResults,
            location: location,
            searchRadiusMeters: searchRadiusMeters,
            useCache: useCache,
          )
          .then((r) => r.map(fromAlgolia).toList());

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
  String? cedula,
  double? salario,
  bool? estaActivo,
  DateTime? fechaNacimiento,
  DateTime? fecahContratacion,
  int? vacaciones,
  int? vacacionesUsadas,
  bool? isLoggedIn,
  DateTime? lastLogin,
  String? idDispositivo,
  DateTime? tiempoSesion,
  bool? timerSesionEstado,
  int? vacacionesAdicionales,
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
      'cedula': cedula,
      'salario': salario,
      'estaActivo': estaActivo,
      'fechaNacimiento': fechaNacimiento,
      'fecahContratacion': fecahContratacion,
      'Vacaciones': vacaciones,
      'VacacionesUsadas': vacacionesUsadas,
      'IsLoggedIn': isLoggedIn,
      'LastLogin': lastLogin,
      'IdDispositivo': idDispositivo,
      'TiempoSesion': tiempoSesion,
      'timerSesionEstado': timerSesionEstado,
      'vacacionesAdicionales': vacacionesAdicionales,
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
        e1?.cedula == e2?.cedula &&
        e1?.salario == e2?.salario &&
        e1?.estaActivo == e2?.estaActivo &&
        e1?.fechaNacimiento == e2?.fechaNacimiento &&
        e1?.fecahContratacion == e2?.fecahContratacion &&
        e1?.vacaciones == e2?.vacaciones &&
        e1?.vacacionesUsadas == e2?.vacacionesUsadas &&
        e1?.isLoggedIn == e2?.isLoggedIn &&
        e1?.lastLogin == e2?.lastLogin &&
        e1?.idDispositivo == e2?.idDispositivo &&
        e1?.tiempoSesion == e2?.tiempoSesion &&
        e1?.timerSesionEstado == e2?.timerSesionEstado &&
        e1?.vacacionesAdicionales == e2?.vacacionesAdicionales;
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
        e?.cedula,
        e?.salario,
        e?.estaActivo,
        e?.fechaNacimiento,
        e?.fecahContratacion,
        e?.vacaciones,
        e?.vacacionesUsadas,
        e?.isLoggedIn,
        e?.lastLogin,
        e?.idDispositivo,
        e?.tiempoSesion,
        e?.timerSesionEstado,
        e?.vacacionesAdicionales
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
