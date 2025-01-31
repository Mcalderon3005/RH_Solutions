import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index_vaciones_admin_widget.dart' show IndexVacionesAdminWidget;
import 'package:flutter/material.dart';

class IndexVacionesAdminModel
    extends FlutterFlowModel<IndexVacionesAdminWidget> {
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
