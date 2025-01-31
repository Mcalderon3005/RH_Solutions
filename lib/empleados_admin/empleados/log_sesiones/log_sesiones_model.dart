import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'log_sesiones_widget.dart' show LogSesionesWidget;
import 'package:flutter/material.dart';

class LogSesionesModel extends FlutterFlowModel<LogSesionesWidget> {
  ///  State fields for stateful widgets in this page.

  List<UsersRecord> simpleSearchResults = [];
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
