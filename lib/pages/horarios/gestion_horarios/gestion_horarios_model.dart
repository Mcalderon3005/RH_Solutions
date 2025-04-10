import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'gestion_horarios_widget.dart' show GestionHorariosWidget;
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart'
    show TutorialCoachMark;
import 'package:flutter/material.dart';

class GestionHorariosModel extends FlutterFlowModel<GestionHorariosWidget> {
  ///  State fields for stateful widgets in this page.

  TutorialCoachMark? ttlGestionHorariosController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    ttlGestionHorariosController?.finish();
  }
}
