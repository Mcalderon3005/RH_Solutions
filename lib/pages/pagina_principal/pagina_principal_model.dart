import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart'
    show TutorialCoachMark;
import 'pagina_principal_widget.dart' show PaginaPrincipalWidget;
import 'package:flutter/material.dart';

class PaginaPrincipalModel extends FlutterFlowModel<PaginaPrincipalWidget> {
  ///  State fields for stateful widgets in this page.

  TutorialCoachMark? tutorialLoginController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tutorialLoginController?.finish();
  }
}
