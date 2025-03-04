import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'crear_pago_widget.dart' show CrearPagoWidget;
import 'package:flutter/material.dart';

class CrearPagoModel extends FlutterFlowModel<CrearPagoWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for drdEmpleado widget.
  String? drdEmpleadoValue;
  FormFieldController<String>? drdEmpleadoValueController;
  // State field(s) for txtNombre widget.
  FocusNode? txtNombreFocusNode;
  TextEditingController? txtNombreTextController;
  String? Function(BuildContext, String?)? txtNombreTextControllerValidator;
  // State field(s) for txtApellidos widget.
  FocusNode? txtApellidosFocusNode;
  TextEditingController? txtApellidosTextController;
  String? Function(BuildContext, String?)? txtApellidosTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtNombreFocusNode?.dispose();
    txtNombreTextController?.dispose();

    txtApellidosFocusNode?.dispose();
    txtApellidosTextController?.dispose();
  }
}
