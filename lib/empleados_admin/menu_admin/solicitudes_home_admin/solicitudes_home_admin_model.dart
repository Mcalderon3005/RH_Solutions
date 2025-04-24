import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart'
    show TutorialCoachMark;
import 'solicitudes_home_admin_widget.dart' show SolicitudesHomeAdminWidget;
import 'package:flutter/material.dart';

class SolicitudesHomeAdminModel
    extends FlutterFlowModel<SolicitudesHomeAdminWidget> {
  ///  State fields for stateful widgets in this page.

  TutorialCoachMark? ttlSolicitudesHomeAdminController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    ttlSolicitudesHomeAdminController?.finish();
  }
}
