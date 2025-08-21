import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'empleado_vacaciones_admin_widget.dart'
    show EmpleadoVacacionesAdminWidget;
import 'package:flutter/material.dart';

class EmpleadoVacacionesAdminModel
    extends FlutterFlowModel<EmpleadoVacacionesAdminWidget> {
  ///  Local state fields for this page.

  List<UsersRecord> usersListV = [];
  void addToUsersListV(UsersRecord item) => usersListV.add(item);
  void removeFromUsersListV(UsersRecord item) => usersListV.remove(item);
  void removeAtIndexFromUsersListV(int index) => usersListV.removeAt(index);
  void insertAtIndexInUsersListV(int index, UsersRecord item) =>
      usersListV.insert(index, item);
  void updateUsersListVAtIndex(int index, Function(UsersRecord) updateFn) =>
      usersListV[index] = updateFn(usersListV[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in EmpleadoVacacionesAdmin widget.
  List<UsersRecord>? usersList;
  // Stores action output result for [Firestore Query - Query a collection] action in EmpleadoVacacionesAdmin widget.
  UsersRecord? userInfoSingle;
  // Stores action output result for [Custom Action - verificarSesionActiva] action in EmpleadoVacacionesAdmin widget.
  bool? timerSesion;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<UsersRecord>();
  List<UsersRecord> simpleSearchResults = [];
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    paginatedDataTableController.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }

  /// Action blocks.
  Future logout(BuildContext context) async {}
}
