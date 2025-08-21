import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart'
    show TutorialCoachMark;
import 'solicitudes_vacaciones_admin_widget.dart'
    show SolicitudesVacacionesAdminWidget;
import 'package:flutter/material.dart';

class SolicitudesVacacionesAdminModel
    extends FlutterFlowModel<SolicitudesVacacionesAdminWidget> {
  ///  Local state fields for this page.

  SolicitudVacacionesRecord? vacacionesListT;

  ///  State fields for stateful widgets in this page.

  TutorialCoachMark? solicitudesVacacionesAdminController;
  // Stores action output result for [Firestore Query - Query a collection] action in solicitudesVacacionesAdmin widget.
  List<SolicitudVacacionesRecord>? vacacionesList;
  // Stores action output result for [Firestore Query - Query a collection] action in solicitudesVacacionesAdmin widget.
  UsersRecord? userInfoSingle;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<SolicitudVacacionesRecord>();
  List<UsersRecord> simpleSearchResults = [];
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    solicitudesVacacionesAdminController?.finish();
    paginatedDataTableController.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
