import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'log_errores_sesion_widget.dart' show LogErroresSesionWidget;
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart'
    show TutorialCoachMark;
import 'package:flutter/material.dart';

class LogErroresSesionModel extends FlutterFlowModel<LogErroresSesionWidget> {
  ///  Local state fields for this page.

  List<LogManagedErrorRecord> erroresListT = [];
  void addToErroresListT(LogManagedErrorRecord item) => erroresListT.add(item);
  void removeFromErroresListT(LogManagedErrorRecord item) =>
      erroresListT.remove(item);
  void removeAtIndexFromErroresListT(int index) => erroresListT.removeAt(index);
  void insertAtIndexInErroresListT(int index, LogManagedErrorRecord item) =>
      erroresListT.insert(index, item);
  void updateErroresListTAtIndex(
          int index, Function(LogManagedErrorRecord) updateFn) =>
      erroresListT[index] = updateFn(erroresListT[index]);

  ///  State fields for stateful widgets in this page.

  TutorialCoachMark? logErroresSesionController;
  // Stores action output result for [Firestore Query - Query a collection] action in logErroresSesion widget.
  List<LogManagedErrorRecord>? erroresList;
  // Stores action output result for [Firestore Query - Query a collection] action in logErroresSesion widget.
  UsersRecord? userInfoSingle;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<LogManagedErrorRecord>();
  List<UsersRecord> simpleSearchResults = [];
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<LogManagedErrorRecord>? listViewPreviousSnapshot;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    logErroresSesionController?.finish();
    paginatedDataTableController.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
