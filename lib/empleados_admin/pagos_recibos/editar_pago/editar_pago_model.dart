import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'editar_pago_widget.dart' show EditarPagoWidget;
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart'
    show TutorialCoachMark;
import 'package:flutter/material.dart';

class EditarPagoModel extends FlutterFlowModel<EditarPagoWidget> {
  ///  State fields for stateful widgets in this page.

  TutorialCoachMark? editarPagoController;
  // State field(s) for drdTipo widget.
  String? drdTipoValue1;
  FormFieldController<String>? drdTipoValueController1;
  DateTime? datePicked1;
  // State field(s) for txtMonto widget.
  FocusNode? txtMontoFocusNode1;
  TextEditingController? txtMontoTextController1;
  String? Function(BuildContext, String?)? txtMontoTextController1Validator;
  // State field(s) for txtDetalle widget.
  FocusNode? txtDetalleFocusNode1;
  TextEditingController? txtDetalleTextController1;
  String? Function(BuildContext, String?)? txtDetalleTextController1Validator;
  bool isDataUploading_uploadDataN02 = false;
  FFUploadedFile uploadedLocalFile_uploadDataN02 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadDataN02 = '';

  // State field(s) for drdTipo widget.
  String? drdTipoValue2;
  FormFieldController<String>? drdTipoValueController2;
  DateTime? datePicked2;
  // State field(s) for txtMonto widget.
  FocusNode? txtMontoFocusNode2;
  TextEditingController? txtMontoTextController2;
  String? Function(BuildContext, String?)? txtMontoTextController2Validator;
  // State field(s) for txtDetalle widget.
  FocusNode? txtDetalleFocusNode2;
  TextEditingController? txtDetalleTextController2;
  String? Function(BuildContext, String?)? txtDetalleTextController2Validator;
  bool isDataUploading_uploadDataN0 = false;
  FFUploadedFile uploadedLocalFile_uploadDataN0 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadDataN0 = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    editarPagoController?.finish();
    txtMontoFocusNode1?.dispose();
    txtMontoTextController1?.dispose();

    txtDetalleFocusNode1?.dispose();
    txtDetalleTextController1?.dispose();

    txtMontoFocusNode2?.dispose();
    txtMontoTextController2?.dispose();

    txtDetalleFocusNode2?.dispose();
    txtDetalleTextController2?.dispose();
  }
}
