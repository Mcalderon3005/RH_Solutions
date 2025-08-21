import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart'
    show TutorialCoachMark;
import 'resolucion_problemas_widget.dart' show ResolucionProblemasWidget;
import 'package:flutter/material.dart';

class ResolucionProblemasModel
    extends FlutterFlowModel<ResolucionProblemasWidget> {
  ///  State fields for stateful widgets in this page.

  TutorialCoachMark? resolucionProblemasController;
  // State field(s) for txtDescripcion widget.
  FocusNode? txtDescripcionFocusNode1;
  TextEditingController? txtDescripcionTextController1;
  String? Function(BuildContext, String?)?
      txtDescripcionTextController1Validator;
  // State field(s) for txtDescripcion widget.
  FocusNode? txtDescripcionFocusNode2;
  TextEditingController? txtDescripcionTextController2;
  String? Function(BuildContext, String?)?
      txtDescripcionTextController2Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    resolucionProblemasController?.finish();
    txtDescripcionFocusNode1?.dispose();
    txtDescripcionTextController1?.dispose();

    txtDescripcionFocusNode2?.dispose();
    txtDescripcionTextController2?.dispose();
  }
}
