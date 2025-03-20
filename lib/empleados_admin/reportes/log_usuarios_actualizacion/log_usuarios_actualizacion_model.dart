import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'log_usuarios_actualizacion_widget.dart'
    show LogUsuariosActualizacionWidget;
import 'package:flutter/material.dart';

class LogUsuariosActualizacionModel
    extends FlutterFlowModel<LogUsuariosActualizacionWidget> {
  ///  Local state fields for this page.

  List<LogActualizacionUsuariosRecord> usserUpdatedListT = [];
  void addToUsserUpdatedListT(LogActualizacionUsuariosRecord item) =>
      usserUpdatedListT.add(item);
  void removeFromUsserUpdatedListT(LogActualizacionUsuariosRecord item) =>
      usserUpdatedListT.remove(item);
  void removeAtIndexFromUsserUpdatedListT(int index) =>
      usserUpdatedListT.removeAt(index);
  void insertAtIndexInUsserUpdatedListT(
          int index, LogActualizacionUsuariosRecord item) =>
      usserUpdatedListT.insert(index, item);
  void updateUsserUpdatedListTAtIndex(
          int index, Function(LogActualizacionUsuariosRecord) updateFn) =>
      usserUpdatedListT[index] = updateFn(usserUpdatedListT[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in logUsuariosActualizacion widget.
  List<LogActualizacionUsuariosRecord>? userCreationList;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<LogActualizacionUsuariosRecord>();
  List<UsersRecord> simpleSearchResults = [];
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<LogActualizacionUsuariosRecord>? listViewPreviousSnapshot;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    paginatedDataTableController.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
