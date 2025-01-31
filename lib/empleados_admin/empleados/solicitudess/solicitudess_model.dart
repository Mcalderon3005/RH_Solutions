import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'solicitudess_widget.dart' show SolicitudessWidget;
import 'package:flutter/material.dart';

class SolicitudessModel extends FlutterFlowModel<SolicitudessWidget> {
  ///  State fields for stateful widgets in this page.

  List<UsersRecord> simpleSearchResults = [];
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<UsersRecord>? listViewPreviousSnapshot;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
