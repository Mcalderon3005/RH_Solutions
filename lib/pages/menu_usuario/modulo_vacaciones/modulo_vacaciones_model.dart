import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'modulo_vacaciones_widget.dart' show ModuloVacacionesWidget;
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart'
    show TutorialCoachMark;
import 'package:flutter/material.dart';

class ModuloVacacionesModel extends FlutterFlowModel<ModuloVacacionesWidget> {
  ///  State fields for stateful widgets in this page.

  TutorialCoachMark? ttlModuloVacacionesController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    ttlModuloVacacionesController?.finish();
  }
}
