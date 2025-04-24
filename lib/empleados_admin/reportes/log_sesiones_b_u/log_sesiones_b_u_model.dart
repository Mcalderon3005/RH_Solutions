import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'log_sesiones_b_u_widget.dart' show LogSesionesBUWidget;
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart'
    show TutorialCoachMark;
import 'package:flutter/material.dart';

class LogSesionesBUModel extends FlutterFlowModel<LogSesionesBUWidget> {
  ///  State fields for stateful widgets in this page.

  TutorialCoachMark? ttlLogSesionesBUController;
  List<UsersRecord> simpleSearchResults = [];
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    ttlLogSesionesBUController?.finish();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
