import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart'
    show TutorialCoachMark;
import 'resolucion_problemas_widget.dart' show ResolucionProblemasWidget;
import 'package:flutter/material.dart';

class ResolucionProblemasModel
    extends FlutterFlowModel<ResolucionProblemasWidget> {
  ///  State fields for stateful widgets in this page.

  TutorialCoachMark? ttlResolucionProblemasController;
  // State field(s) for txtDescripcion widget.
  FocusNode? txtDescripcionFocusNode;
  TextEditingController? txtDescripcionTextController;
  String? Function(BuildContext, String?)?
      txtDescripcionTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    ttlResolucionProblemasController?.finish();
    txtDescripcionFocusNode?.dispose();
    txtDescripcionTextController?.dispose();
  }
}
