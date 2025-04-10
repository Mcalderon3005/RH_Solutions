import '/flutter_flow/flutter_flow_util.dart';
import 'log_error_horario_detalles_widget.dart'
    show LogErrorHorarioDetallesWidget;
import 'package:flutter/material.dart';

class LogErrorHorarioDetallesModel
    extends FlutterFlowModel<LogErrorHorarioDetallesWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
