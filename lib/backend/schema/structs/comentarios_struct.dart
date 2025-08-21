// ignore_for_file: unnecessary_getters_setters
import '/backend/algolia/serialization_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class ComentariosStruct extends FFFirebaseStruct {
  ComentariosStruct({
    String? nombre,
    String? comentario,
    DateTime? fecha,
    DocumentReference? referencia,
    String? correo,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _nombre = nombre,
        _comentario = comentario,
        _fecha = fecha,
        _referencia = referencia,
        _correo = correo,
        super(firestoreUtilData);

  // "Nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  set nombre(String? val) => _nombre = val;

  bool hasNombre() => _nombre != null;

  // "Comentario" field.
  String? _comentario;
  String get comentario => _comentario ?? '';
  set comentario(String? val) => _comentario = val;

  bool hasComentario() => _comentario != null;

  // "Fecha" field.
  DateTime? _fecha;
  DateTime? get fecha => _fecha;
  set fecha(DateTime? val) => _fecha = val;

  bool hasFecha() => _fecha != null;

  // "Referencia" field.
  DocumentReference? _referencia;
  DocumentReference? get referencia => _referencia;
  set referencia(DocumentReference? val) => _referencia = val;

  bool hasReferencia() => _referencia != null;

  // "Correo" field.
  String? _correo;
  String get correo => _correo ?? '';
  set correo(String? val) => _correo = val;

  bool hasCorreo() => _correo != null;

  static ComentariosStruct fromMap(Map<String, dynamic> data) =>
      ComentariosStruct(
        nombre: data['Nombre'] as String?,
        comentario: data['Comentario'] as String?,
        fecha: data['Fecha'] as DateTime?,
        referencia: data['Referencia'] as DocumentReference?,
        correo: data['Correo'] as String?,
      );

  static ComentariosStruct? maybeFromMap(dynamic data) => data is Map
      ? ComentariosStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'Nombre': _nombre,
        'Comentario': _comentario,
        'Fecha': _fecha,
        'Referencia': _referencia,
        'Correo': _correo,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Nombre': serializeParam(
          _nombre,
          ParamType.String,
        ),
        'Comentario': serializeParam(
          _comentario,
          ParamType.String,
        ),
        'Fecha': serializeParam(
          _fecha,
          ParamType.DateTime,
        ),
        'Referencia': serializeParam(
          _referencia,
          ParamType.DocumentReference,
        ),
        'Correo': serializeParam(
          _correo,
          ParamType.String,
        ),
      }.withoutNulls;

  static ComentariosStruct fromSerializableMap(Map<String, dynamic> data) =>
      ComentariosStruct(
        nombre: deserializeParam(
          data['Nombre'],
          ParamType.String,
          false,
        ),
        comentario: deserializeParam(
          data['Comentario'],
          ParamType.String,
          false,
        ),
        fecha: deserializeParam(
          data['Fecha'],
          ParamType.DateTime,
          false,
        ),
        referencia: deserializeParam(
          data['Referencia'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['users'],
        ),
        correo: deserializeParam(
          data['Correo'],
          ParamType.String,
          false,
        ),
      );

  static ComentariosStruct fromAlgoliaData(Map<String, dynamic> data) =>
      ComentariosStruct(
        nombre: convertAlgoliaParam(
          data['Nombre'],
          ParamType.String,
          false,
        ),
        comentario: convertAlgoliaParam(
          data['Comentario'],
          ParamType.String,
          false,
        ),
        fecha: convertAlgoliaParam(
          data['Fecha'],
          ParamType.DateTime,
          false,
        ),
        referencia: convertAlgoliaParam(
          data['Referencia'],
          ParamType.DocumentReference,
          false,
        ),
        correo: convertAlgoliaParam(
          data['Correo'],
          ParamType.String,
          false,
        ),
        firestoreUtilData: FirestoreUtilData(
          clearUnsetFields: false,
          create: true,
        ),
      );

  @override
  String toString() => 'ComentariosStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ComentariosStruct &&
        nombre == other.nombre &&
        comentario == other.comentario &&
        fecha == other.fecha &&
        referencia == other.referencia &&
        correo == other.correo;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([nombre, comentario, fecha, referencia, correo]);
}

ComentariosStruct createComentariosStruct({
  String? nombre,
  String? comentario,
  DateTime? fecha,
  DocumentReference? referencia,
  String? correo,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ComentariosStruct(
      nombre: nombre,
      comentario: comentario,
      fecha: fecha,
      referencia: referencia,
      correo: correo,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ComentariosStruct? updateComentariosStruct(
  ComentariosStruct? comentarios, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    comentarios
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addComentariosStructData(
  Map<String, dynamic> firestoreData,
  ComentariosStruct? comentarios,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (comentarios == null) {
    return;
  }
  if (comentarios.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && comentarios.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final comentariosData =
      getComentariosFirestoreData(comentarios, forFieldValue);
  final nestedData =
      comentariosData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = comentarios.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getComentariosFirestoreData(
  ComentariosStruct? comentarios, [
  bool forFieldValue = false,
]) {
  if (comentarios == null) {
    return {};
  }
  final firestoreData = mapToFirestore(comentarios.toMap());

  // Add any Firestore field values
  comentarios.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getComentariosListFirestoreData(
  List<ComentariosStruct>? comentarioss,
) =>
    comentarioss?.map((e) => getComentariosFirestoreData(e, true)).toList() ??
    [];
