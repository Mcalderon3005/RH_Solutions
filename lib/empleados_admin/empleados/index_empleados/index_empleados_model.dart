import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'index_empleados_widget.dart' show IndexEmpleadosWidget;
import 'package:flutter/material.dart';

class IndexEmpleadosModel extends FlutterFlowModel<IndexEmpleadosWidget> {
  ///  State fields for stateful widgets in this page.

  List<UsersRecord> simpleSearchResults1 = [];
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  List<UsersRecord>? listViewPreviousSnapshot1;
  List<UsersRecord> simpleSearchResults2 = [];
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  List<UsersRecord>? listViewPreviousSnapshot2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();
  }
}
