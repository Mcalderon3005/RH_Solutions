import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'editar_pago_widget.dart' show EditarPagoWidget;
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart'
    show TutorialCoachMark;
import 'package:flutter/material.dart';

class EditarPagoModel extends FlutterFlowModel<EditarPagoWidget> {
  ///  State fields for stateful widgets in this page.

  TutorialCoachMark? tllEditarPagoController;
  // State field(s) for drdTipo widget.
  String? drdTipoValue;
  FormFieldController<String>? drdTipoValueController;
  DateTime? datePicked;
  // State field(s) for txtMonto widget.
  FocusNode? txtMontoFocusNode;
  TextEditingController? txtMontoTextController;
  String? Function(BuildContext, String?)? txtMontoTextControllerValidator;
  // State field(s) for txtDetalle widget.
  FocusNode? txtDetalleFocusNode;
  TextEditingController? txtDetalleTextController;
  String? Function(BuildContext, String?)? txtDetalleTextControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tllEditarPagoController?.finish();
    txtMontoFocusNode?.dispose();
    txtMontoTextController?.dispose();

    txtDetalleFocusNode?.dispose();
    txtDetalleTextController?.dispose();
  }
}
