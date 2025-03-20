import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'inicio_sesion_widget.dart' show InicioSesionWidget;
import 'package:flutter/material.dart';

class InicioSesionModel extends FlutterFlowModel<InicioSesionWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;
  String? _emailAddressTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Email is required.';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  String? _passwordTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Passsword is required.';
    }

    return null;
  }

  // State field(s) for emailAddresstxt1 widget.
  FocusNode? emailAddresstxt1FocusNode;
  TextEditingController? emailAddresstxt1TextController;
  String? Function(BuildContext, String?)?
      emailAddresstxt1TextControllerValidator;
  String? _emailAddresstxt1TextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Email is required.';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for passwordtxt1 widget.
  FocusNode? passwordtxt1FocusNode;
  TextEditingController? passwordtxt1TextController;
  late bool passwordtxt1Visibility;
  String? Function(BuildContext, String?)? passwordtxt1TextControllerValidator;
  String? _passwordtxt1TextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Passsword is required.';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    emailAddressTextControllerValidator = _emailAddressTextControllerValidator;
    passwordVisibility = false;
    passwordTextControllerValidator = _passwordTextControllerValidator;
    emailAddresstxt1TextControllerValidator =
        _emailAddresstxt1TextControllerValidator;
    passwordtxt1Visibility = false;
    passwordtxt1TextControllerValidator = _passwordtxt1TextControllerValidator;
  }

  @override
  void dispose() {
    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();

    emailAddresstxt1FocusNode?.dispose();
    emailAddresstxt1TextController?.dispose();

    passwordtxt1FocusNode?.dispose();
    passwordtxt1TextController?.dispose();
  }
}
