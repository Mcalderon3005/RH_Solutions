import '/flutter_flow/flutter_flow_util.dart';
import 'crear_empleado_widget.dart' show CrearEmpleadoWidget;
import 'package:flutter/material.dart';

class CrearEmpleadoModel extends FlutterFlowModel<CrearEmpleadoWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for txtNombre widget.
  FocusNode? txtNombreFocusNode;
  TextEditingController? txtNombreTextController;
  String? Function(BuildContext, String?)? txtNombreTextControllerValidator;
  // State field(s) for txtApellidos widget.
  FocusNode? txtApellidosFocusNode;
  TextEditingController? txtApellidosTextController;
  String? Function(BuildContext, String?)? txtApellidosTextControllerValidator;
  // State field(s) for txtEmail widget.
  FocusNode? txtEmailFocusNode;
  TextEditingController? txtEmailTextController;
  String? Function(BuildContext, String?)? txtEmailTextControllerValidator;
  // State field(s) for txtPassword widget.
  FocusNode? txtPasswordFocusNode;
  TextEditingController? txtPasswordTextController;
  late bool txtPasswordVisibility;
  String? Function(BuildContext, String?)? txtPasswordTextControllerValidator;
  // State field(s) for txtCargo widget.
  FocusNode? txtCargoFocusNode;
  TextEditingController? txtCargoTextController;
  String? Function(BuildContext, String?)? txtCargoTextControllerValidator;
  // State field(s) for txtFechaContra widget.
  FocusNode? txtFechaContraFocusNode;
  TextEditingController? txtFechaContraTextController;
  String? Function(BuildContext, String?)?
      txtFechaContraTextControllerValidator;
  // State field(s) for txtCed widget.
  FocusNode? txtCedFocusNode;
  TextEditingController? txtCedTextController;
  String? Function(BuildContext, String?)? txtCedTextControllerValidator;
  // State field(s) for txtNum widget.
  FocusNode? txtNumFocusNode;
  TextEditingController? txtNumTextController;
  String? Function(BuildContext, String?)? txtNumTextControllerValidator;
  // State field(s) for txtFechaNacimiento widget.
  FocusNode? txtFechaNacimientoFocusNode;
  TextEditingController? txtFechaNacimientoTextController;
  String? Function(BuildContext, String?)?
      txtFechaNacimientoTextControllerValidator;
  // State field(s) for txtSalario widget.
  FocusNode? txtSalarioFocusNode;
  TextEditingController? txtSalarioTextController;
  String? Function(BuildContext, String?)? txtSalarioTextControllerValidator;
  // State field(s) for Foto widget.
  FocusNode? fotoFocusNode;
  TextEditingController? fotoTextController;
  String? Function(BuildContext, String?)? fotoTextControllerValidator;

  @override
  void initState(BuildContext context) {
    txtPasswordVisibility = false;
  }

  @override
  void dispose() {
    txtNombreFocusNode?.dispose();
    txtNombreTextController?.dispose();

    txtApellidosFocusNode?.dispose();
    txtApellidosTextController?.dispose();

    txtEmailFocusNode?.dispose();
    txtEmailTextController?.dispose();

    txtPasswordFocusNode?.dispose();
    txtPasswordTextController?.dispose();

    txtCargoFocusNode?.dispose();
    txtCargoTextController?.dispose();

    txtFechaContraFocusNode?.dispose();
    txtFechaContraTextController?.dispose();

    txtCedFocusNode?.dispose();
    txtCedTextController?.dispose();

    txtNumFocusNode?.dispose();
    txtNumTextController?.dispose();

    txtFechaNacimientoFocusNode?.dispose();
    txtFechaNacimientoTextController?.dispose();

    txtSalarioFocusNode?.dispose();
    txtSalarioTextController?.dispose();

    fotoFocusNode?.dispose();
    fotoTextController?.dispose();
  }
}
