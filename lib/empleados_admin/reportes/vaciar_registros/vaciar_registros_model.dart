import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart'
    show TutorialCoachMark;
import 'vaciar_registros_widget.dart' show VaciarRegistrosWidget;
import 'package:flutter/material.dart';

class VaciarRegistrosModel extends FlutterFlowModel<VaciarRegistrosWidget> {
  ///  State fields for stateful widgets in this page.

  TutorialCoachMark? vaciarRegistrosController;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // Stores action output result for [Custom Action - emptyColection] action in Button widget.
  String? resultado;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // Stores action output result for [Custom Action - emptyColection] action in Button widget.
  String? resultado1;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    vaciarRegistrosController?.finish();
  }
}
