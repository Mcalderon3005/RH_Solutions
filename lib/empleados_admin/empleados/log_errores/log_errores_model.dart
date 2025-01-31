import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'log_errores_widget.dart' show LogErroresWidget;
import 'package:flutter/material.dart';

class LogErroresModel extends FlutterFlowModel<LogErroresWidget> {
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
