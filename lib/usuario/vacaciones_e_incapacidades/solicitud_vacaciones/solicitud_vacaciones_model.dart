import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart'
    show TutorialCoachMark;
import 'solicitud_vacaciones_widget.dart' show SolicitudVacacionesWidget;
import 'package:flutter/material.dart';

class SolicitudVacacionesModel
    extends FlutterFlowModel<SolicitudVacacionesWidget> {
  ///  State fields for stateful widgets in this page.

  TutorialCoachMark? solicitudVacacionesController;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  DateTime? datePicked1;
  DateTime? datePicked2;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  bool isDataUploading_uploadDataHbd1 = false;
  FFUploadedFile uploadedLocalFile_uploadDataHbd1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadDataHbd1 = '';

  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  DateTime? datePicked3;
  DateTime? datePicked4;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  bool isDataUploading_uploadDataHbd = false;
  FFUploadedFile uploadedLocalFile_uploadDataHbd =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadDataHbd = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    solicitudVacacionesController?.finish();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();
  }
}
