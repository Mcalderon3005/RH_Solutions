import '/flutter_flow/flutter_flow_util.dart';
import 'editar_vaciones_agregadas_widget.dart'
    show EditarVacionesAgregadasWidget;
import 'package:flutter/material.dart';

class EditarVacionesAgregadasModel
    extends FlutterFlowModel<EditarVacionesAgregadasWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Custom Action - newCustomAction] action in Button widget.
  int? vacacionesAdicionalesIn;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
