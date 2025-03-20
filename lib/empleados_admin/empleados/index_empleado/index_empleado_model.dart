import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'index_empleado_widget.dart' show IndexEmpleadoWidget;
import 'package:flutter/material.dart';

class IndexEmpleadoModel extends FlutterFlowModel<IndexEmpleadoWidget> {
  ///  Local state fields for this page.

  List<UsersRecord> usersListT = [];
  void addToUsersListT(UsersRecord item) => usersListT.add(item);
  void removeFromUsersListT(UsersRecord item) => usersListT.remove(item);
  void removeAtIndexFromUsersListT(int index) => usersListT.removeAt(index);
  void insertAtIndexInUsersListT(int index, UsersRecord item) =>
      usersListT.insert(index, item);
  void updateUsersListTAtIndex(int index, Function(UsersRecord) updateFn) =>
      usersListT[index] = updateFn(usersListT[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in indexEmpleado widget.
  List<UsersRecord>? usersList;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<UsersRecord>();
  List<UsersRecord> simpleSearchResults1 = [];
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<UsersRecord> simpleSearchResults2 = [];
  List<UsersRecord>? listViewPreviousSnapshot;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    paginatedDataTableController.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
