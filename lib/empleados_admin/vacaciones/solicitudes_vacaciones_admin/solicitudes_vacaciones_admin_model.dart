import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'solicitudes_vacaciones_admin_widget.dart'
    show SolicitudesVacacionesAdminWidget;
import 'package:flutter/material.dart';

class SolicitudesVacacionesAdminModel
    extends FlutterFlowModel<SolicitudesVacacionesAdminWidget> {
  ///  Local state fields for this page.

  SolicitudVacacionesRecord? vacacionesListT;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in solicitudesVacacionesAdmin widget.
  List<SolicitudVacacionesRecord>? vacacionesList;
  // Stores action output result for [Custom Action - deleteVacaciones] action in IconButton widget.
  String? vacacionesResult2;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<SolicitudVacacionesRecord>();
  // Stores action output result for [Custom Action - deleteVacaciones] action in IconButton widget.
  String? vacacionesResult1;
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
}
