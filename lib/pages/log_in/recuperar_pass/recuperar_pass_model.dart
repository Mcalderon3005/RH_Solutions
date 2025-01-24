import '/components/custom_appbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'recuperar_pass_widget.dart' show RecuperarPassWidget;
import 'package:flutter/material.dart';

class RecuperarPassModel extends FlutterFlowModel<RecuperarPassWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for customAppbar component.
  late CustomAppbarModel customAppbarModel;
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

  @override
  void initState(BuildContext context) {
    customAppbarModel = createModel(context, () => CustomAppbarModel());
    emailAddressTextControllerValidator = _emailAddressTextControllerValidator;
  }

  @override
  void dispose() {
    customAppbarModel.dispose();
    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();
  }
}
