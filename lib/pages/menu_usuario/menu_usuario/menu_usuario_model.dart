import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'menu_usuario_widget.dart' show MenuUsuarioWidget;
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart'
    show TutorialCoachMark;
import 'package:flutter/material.dart';

class MenuUsuarioModel extends FlutterFlowModel<MenuUsuarioWidget> {
  ///  State fields for stateful widgets in this page.

  TutorialCoachMark? ttmenuclienteController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    ttmenuclienteController?.finish();
  }
}
