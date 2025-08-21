import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'index_incapacidad_admin_widget.dart' show IndexIncapacidadAdminWidget;
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart'
    show TutorialCoachMark;
import 'package:flutter/material.dart';

class IndexIncapacidadAdminModel
    extends FlutterFlowModel<IndexIncapacidadAdminWidget> {
  ///  Local state fields for this page.

  IncapacidadesRecord? incapacidadListT;

  ///  State fields for stateful widgets in this page.

  TutorialCoachMark? indexIncapacidadAdminController;
  // Stores action output result for [Firestore Query - Query a collection] action in indexIncapacidadAdmin widget.
  List<IncapacidadesRecord>? incapacidadesList;
  // Stores action output result for [Firestore Query - Query a collection] action in indexIncapacidadAdmin widget.
  UsersRecord? userInfoSingle;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<IncapacidadesRecord>();
  List<UsersRecord> simpleSearchResults = [];
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    indexIncapacidadAdminController?.finish();
    paginatedDataTableController.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
