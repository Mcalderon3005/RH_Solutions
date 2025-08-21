import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'home_admin_page_widget.dart' show HomeAdminPageWidget;
import 'package:flutter/material.dart';

class HomeAdminPageModel extends FlutterFlowModel<HomeAdminPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in HomeAdminPage widget.
  UsersRecord? userQueryOnPageCopy;
  // Stores action output result for [Custom Action - compararDeviceID] action in HomeAdminPage widget.
  String? deviceFinalReportCopy;
  // Stores action output result for [Custom Action - verificarSesionActiva] action in HomeAdminPage widget.
  bool? timerSesion;
  // Stores action output result for [Firestore Query - Query a collection] action in Container widget.
  UsersRecord? userInfo;
  // Stores action output result for [Firestore Query - Query a collection] action in Container widget.
  UsersRecord? userInfo1;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
