import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'actividades_home_admin_widget.dart' show ActividadesHomeAdminWidget;
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart'
    show TutorialCoachMark;
import 'package:flutter/material.dart';

class ActividadesHomeAdminModel
    extends FlutterFlowModel<ActividadesHomeAdminWidget> {
  ///  State fields for stateful widgets in this page.

  TutorialCoachMark? ttlActividadesHomeAdminController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    ttlActividadesHomeAdminController?.finish();
  }
}
