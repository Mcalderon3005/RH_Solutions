import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'crear_empleado_widget.dart' show CrearEmpleadoWidget;
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart'
    show TutorialCoachMark;
import 'package:flutter/material.dart';

class CrearEmpleadoModel extends FlutterFlowModel<CrearEmpleadoWidget> {
  ///  State fields for stateful widgets in this page.

  TutorialCoachMark? crearEmpleadoController;
  // State field(s) for txtNombre widget.
  FocusNode? txtNombreFocusNode1;
  TextEditingController? txtNombreTextController1;
  String? Function(BuildContext, String?)? txtNombreTextController1Validator;
  // State field(s) for txtApellidos widget.
  FocusNode? txtApellidosFocusNode1;
  TextEditingController? txtApellidosTextController1;
  String? Function(BuildContext, String?)? txtApellidosTextController1Validator;
  // State field(s) for txtEmail widget.
  FocusNode? txtEmailFocusNode1;
  TextEditingController? txtEmailTextController1;
  String? Function(BuildContext, String?)? txtEmailTextController1Validator;
  // State field(s) for txtPassword widget.
  FocusNode? txtPasswordFocusNode1;
  TextEditingController? txtPasswordTextController1;
  late bool txtPasswordVisibility1;
  String? Function(BuildContext, String?)? txtPasswordTextController1Validator;
  // State field(s) for txtCargo widget.
  FocusNode? txtCargoFocusNode1;
  TextEditingController? txtCargoTextController1;
  String? Function(BuildContext, String?)? txtCargoTextController1Validator;
  // State field(s) for txtCed widget.
  FocusNode? txtCedFocusNode1;
  TextEditingController? txtCedTextController1;
  String? Function(BuildContext, String?)? txtCedTextController1Validator;
  // State field(s) for txtNum widget.
  FocusNode? txtNumFocusNode1;
  TextEditingController? txtNumTextController1;
  String? Function(BuildContext, String?)? txtNumTextController1Validator;
  // State field(s) for drdRole widget.
  String? drdRoleValue1;
  FormFieldController<String>? drdRoleValueController1;
  DateTime? datePicked1;
  DateTime? datePicked2;
  // State field(s) for txtSalario widget.
  FocusNode? txtSalarioFocusNode1;
  TextEditingController? txtSalarioTextController1;
  String? Function(BuildContext, String?)? txtSalarioTextController1Validator;
  bool isDataUploading_fotoPerfil2 = false;
  FFUploadedFile uploadedLocalFile_fotoPerfil2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_fotoPerfil2 = '';

  // State field(s) for txtNombre widget.
  FocusNode? txtNombreFocusNode2;
  TextEditingController? txtNombreTextController2;
  String? Function(BuildContext, String?)? txtNombreTextController2Validator;
  // State field(s) for txtApellidos widget.
  FocusNode? txtApellidosFocusNode2;
  TextEditingController? txtApellidosTextController2;
  String? Function(BuildContext, String?)? txtApellidosTextController2Validator;
  // State field(s) for txtEmail widget.
  FocusNode? txtEmailFocusNode2;
  TextEditingController? txtEmailTextController2;
  String? Function(BuildContext, String?)? txtEmailTextController2Validator;
  // State field(s) for txtPassword widget.
  FocusNode? txtPasswordFocusNode2;
  TextEditingController? txtPasswordTextController2;
  late bool txtPasswordVisibility2;
  String? Function(BuildContext, String?)? txtPasswordTextController2Validator;
  // State field(s) for txtCargo widget.
  FocusNode? txtCargoFocusNode2;
  TextEditingController? txtCargoTextController2;
  String? Function(BuildContext, String?)? txtCargoTextController2Validator;
  // State field(s) for txtCed widget.
  FocusNode? txtCedFocusNode2;
  TextEditingController? txtCedTextController2;
  String? Function(BuildContext, String?)? txtCedTextController2Validator;
  // State field(s) for txtNum widget.
  FocusNode? txtNumFocusNode2;
  TextEditingController? txtNumTextController2;
  String? Function(BuildContext, String?)? txtNumTextController2Validator;
  // State field(s) for drdRole widget.
  String? drdRoleValue2;
  FormFieldController<String>? drdRoleValueController2;
  DateTime? datePicked3;
  DateTime? datePicked4;
  // State field(s) for txtSalario widget.
  FocusNode? txtSalarioFocusNode2;
  TextEditingController? txtSalarioTextController2;
  String? Function(BuildContext, String?)? txtSalarioTextController2Validator;
  bool isDataUploading_fotoPerfil = false;
  FFUploadedFile uploadedLocalFile_fotoPerfil =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_fotoPerfil = '';

  @override
  void initState(BuildContext context) {
    txtPasswordVisibility1 = false;
    txtPasswordVisibility2 = false;
  }

  @override
  void dispose() {
    crearEmpleadoController?.finish();
    txtNombreFocusNode1?.dispose();
    txtNombreTextController1?.dispose();

    txtApellidosFocusNode1?.dispose();
    txtApellidosTextController1?.dispose();

    txtEmailFocusNode1?.dispose();
    txtEmailTextController1?.dispose();

    txtPasswordFocusNode1?.dispose();
    txtPasswordTextController1?.dispose();

    txtCargoFocusNode1?.dispose();
    txtCargoTextController1?.dispose();

    txtCedFocusNode1?.dispose();
    txtCedTextController1?.dispose();

    txtNumFocusNode1?.dispose();
    txtNumTextController1?.dispose();

    txtSalarioFocusNode1?.dispose();
    txtSalarioTextController1?.dispose();

    txtNombreFocusNode2?.dispose();
    txtNombreTextController2?.dispose();

    txtApellidosFocusNode2?.dispose();
    txtApellidosTextController2?.dispose();

    txtEmailFocusNode2?.dispose();
    txtEmailTextController2?.dispose();

    txtPasswordFocusNode2?.dispose();
    txtPasswordTextController2?.dispose();

    txtCargoFocusNode2?.dispose();
    txtCargoTextController2?.dispose();

    txtCedFocusNode2?.dispose();
    txtCedTextController2?.dispose();

    txtNumFocusNode2?.dispose();
    txtNumTextController2?.dispose();

    txtSalarioFocusNode2?.dispose();
    txtSalarioTextController2?.dispose();
  }
}
