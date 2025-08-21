import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'informacion_sesion_widget.dart' show InformacionSesionWidget;
import 'package:flutter/material.dart';

class InformacionSesionModel extends FlutterFlowModel<InformacionSesionWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in informacionSesion widget.
  UsersRecord? userInfoSingle;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  UsersRecord? userInfo;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  UsersRecord? userInfo2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
