import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'log_usuarios_creacion_widget.dart' show LogUsuariosCreacionWidget;
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart'
    show TutorialCoachMark;
import 'package:flutter/material.dart';

class LogUsuariosCreacionModel
    extends FlutterFlowModel<LogUsuariosCreacionWidget> {
  ///  Local state fields for this page.

  List<UsuarioCreacionRecord> usserCreatedListT = [];
  void addToUsserCreatedListT(UsuarioCreacionRecord item) =>
      usserCreatedListT.add(item);
  void removeFromUsserCreatedListT(UsuarioCreacionRecord item) =>
      usserCreatedListT.remove(item);
  void removeAtIndexFromUsserCreatedListT(int index) =>
      usserCreatedListT.removeAt(index);
  void insertAtIndexInUsserCreatedListT(
          int index, UsuarioCreacionRecord item) =>
      usserCreatedListT.insert(index, item);
  void updateUsserCreatedListTAtIndex(
          int index, Function(UsuarioCreacionRecord) updateFn) =>
      usserCreatedListT[index] = updateFn(usserCreatedListT[index]);

  ///  State fields for stateful widgets in this page.

  TutorialCoachMark? ttllogUsuariosCreacion11Controller;
  // Stores action output result for [Firestore Query - Query a collection] action in logUsuariosCreacion widget.
  List<UsuarioCreacionRecord>? userCreationList;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<UsuarioCreacionRecord>();
  List<UsersRecord> simpleSearchResults = [];
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<UsuarioCreacionRecord>? listViewPreviousSnapshot;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    ttllogUsuariosCreacion11Controller?.finish();
    paginatedDataTableController.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
