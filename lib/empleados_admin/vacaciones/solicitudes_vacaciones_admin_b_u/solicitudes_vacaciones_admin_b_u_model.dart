import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'solicitudes_vacaciones_admin_b_u_widget.dart'
    show SolicitudesVacacionesAdminBUWidget;
import 'package:flutter/material.dart';

class SolicitudesVacacionesAdminBUModel
    extends FlutterFlowModel<SolicitudesVacacionesAdminBUWidget> {
  ///  State fields for stateful widgets in this page.

  List<UsersRecord> simpleSearchResults = [];
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<SolicitudVacacionesRecord>? listViewPreviousSnapshot;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
