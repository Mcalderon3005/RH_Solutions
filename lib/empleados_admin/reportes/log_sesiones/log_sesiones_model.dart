import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'log_sesiones_widget.dart' show LogSesionesWidget;
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart'
    show TutorialCoachMark;
import 'package:flutter/material.dart';

class LogSesionesModel extends FlutterFlowModel<LogSesionesWidget> {
  ///  Local state fields for this page.

  List<LogSesionRecord> sesionesListT = [];
  void addToSesionesListT(LogSesionRecord item) => sesionesListT.add(item);
  void removeFromSesionesListT(LogSesionRecord item) =>
      sesionesListT.remove(item);
  void removeAtIndexFromSesionesListT(int index) =>
      sesionesListT.removeAt(index);
  void insertAtIndexInSesionesListT(int index, LogSesionRecord item) =>
      sesionesListT.insert(index, item);
  void updateSesionesListTAtIndex(
          int index, Function(LogSesionRecord) updateFn) =>
      sesionesListT[index] = updateFn(sesionesListT[index]);

  ///  State fields for stateful widgets in this page.

  TutorialCoachMark? ttlLogSesionesController;
  // Stores action output result for [Firestore Query - Query a collection] action in logSesiones widget.
  List<LogSesionRecord>? sesionesList;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<LogSesionRecord>();
  List<UsersRecord> simpleSearchResults = [];
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<LogSesionRecord>? listViewPreviousSnapshot;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    ttlLogSesionesController?.finish();
    paginatedDataTableController.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
