// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EventoCalendarioStruct extends FFFirebaseStruct {
  EventoCalendarioStruct({
    String? titulo,
    DateTime? fecha,
    Color? color,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _titulo = titulo,
        _fecha = fecha,
        _color = color,
        super(firestoreUtilData);

  // "titulo" field.
  String? _titulo;
  String get titulo => _titulo ?? '';
  set titulo(String? val) => _titulo = val;

  bool hasTitulo() => _titulo != null;

  // "fecha" field.
  DateTime? _fecha;
  DateTime? get fecha => _fecha;
  set fecha(DateTime? val) => _fecha = val;

  bool hasFecha() => _fecha != null;

  // "color" field.
  Color? _color;
  Color get color => _color ?? const Color(0xFF080000);
  set color(Color? val) => _color = val;

  bool hasColor() => _color != null;

  static EventoCalendarioStruct fromMap(Map<String, dynamic> data) =>
      EventoCalendarioStruct(
        titulo: data['titulo'] as String?,
        fecha: data['fecha'] as DateTime?,
        color: getSchemaColor(data['color']),
      );

  static EventoCalendarioStruct? maybeFromMap(dynamic data) => data is Map
      ? EventoCalendarioStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'titulo': _titulo,
        'fecha': _fecha,
        'color': _color,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'titulo': serializeParam(
          _titulo,
          ParamType.String,
        ),
        'fecha': serializeParam(
          _fecha,
          ParamType.DateTime,
        ),
        'color': serializeParam(
          _color,
          ParamType.Color,
        ),
      }.withoutNulls;

  static EventoCalendarioStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      EventoCalendarioStruct(
        titulo: deserializeParam(
          data['titulo'],
          ParamType.String,
          false,
        ),
        fecha: deserializeParam(
          data['fecha'],
          ParamType.DateTime,
          false,
        ),
        color: deserializeParam(
          data['color'],
          ParamType.Color,
          false,
        ),
      );

  @override
  String toString() => 'EventoCalendarioStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is EventoCalendarioStruct &&
        titulo == other.titulo &&
        fecha == other.fecha &&
        color == other.color;
  }

  @override
  int get hashCode => const ListEquality().hash([titulo, fecha, color]);
}

EventoCalendarioStruct createEventoCalendarioStruct({
  String? titulo,
  DateTime? fecha,
  Color? color,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    EventoCalendarioStruct(
      titulo: titulo,
      fecha: fecha,
      color: color,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

EventoCalendarioStruct? updateEventoCalendarioStruct(
  EventoCalendarioStruct? eventoCalendario, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    eventoCalendario
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addEventoCalendarioStructData(
  Map<String, dynamic> firestoreData,
  EventoCalendarioStruct? eventoCalendario,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (eventoCalendario == null) {
    return;
  }
  if (eventoCalendario.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && eventoCalendario.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final eventoCalendarioData =
      getEventoCalendarioFirestoreData(eventoCalendario, forFieldValue);
  final nestedData =
      eventoCalendarioData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = eventoCalendario.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getEventoCalendarioFirestoreData(
  EventoCalendarioStruct? eventoCalendario, [
  bool forFieldValue = false,
]) {
  if (eventoCalendario == null) {
    return {};
  }
  final firestoreData = mapToFirestore(eventoCalendario.toMap());

  // Add any Firestore field values
  eventoCalendario.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getEventoCalendarioListFirestoreData(
  List<EventoCalendarioStruct>? eventoCalendarios,
) =>
    eventoCalendarios
        ?.map((e) => getEventoCalendarioFirestoreData(e, true))
        .toList() ??
    [];
