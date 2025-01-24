import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'usuarios_actividad_widget.dart' show UsuariosActividadWidget;
import 'package:flutter/material.dart';

class UsuariosActividadModel extends FlutterFlowModel<UsuariosActividadWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Checkbox widget.
  Map<UsersRecord, bool> checkboxValueMap = {};
  List<UsersRecord> get checkboxCheckedItems =>
      checkboxValueMap.entries.where((e) => e.value).map((e) => e.key).toList();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
