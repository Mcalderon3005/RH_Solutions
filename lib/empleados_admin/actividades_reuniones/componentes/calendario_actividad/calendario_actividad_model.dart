import '/flutter_flow/flutter_flow_util.dart';
import 'calendario_actividad_widget.dart' show CalendarioActividadWidget;
import 'package:flutter/material.dart';

class CalendarioActividadModel
    extends FlutterFlowModel<CalendarioActividadWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for txtTitulo widget.
  FocusNode? txtTituloFocusNode;
  TextEditingController? txtTituloTextController;
  String? Function(BuildContext, String?)? txtTituloTextControllerValidator;
  // State field(s) for txtDescripcion widget.
  FocusNode? txtDescripcionFocusNode;
  TextEditingController? txtDescripcionTextController;
  String? Function(BuildContext, String?)?
      txtDescripcionTextControllerValidator;
  DateTime? datePicked;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtTituloFocusNode?.dispose();
    txtTituloTextController?.dispose();

    txtDescripcionFocusNode?.dispose();
    txtDescripcionTextController?.dispose();
  }
}
