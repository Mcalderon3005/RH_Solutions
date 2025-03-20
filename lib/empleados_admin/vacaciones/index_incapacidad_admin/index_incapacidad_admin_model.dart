import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'index_incapacidad_admin_widget.dart' show IndexIncapacidadAdminWidget;
import 'package:flutter/material.dart';

class IndexIncapacidadAdminModel
    extends FlutterFlowModel<IndexIncapacidadAdminWidget> {
  ///  Local state fields for this page.

  IncapacidadesRecord? incapacidadListT;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in indexIncapacidadAdmin widget.
  List<IncapacidadesRecord>? incapacidadesList;
  // Stores action output result for [Custom Action - deleteIncapacidades] action in IconButton widget.
  String? incapacidadesResult2;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<IncapacidadesRecord>();
  // Stores action output result for [Custom Action - deleteIncapacidades] action in IconButton widget.
  String? incapacidadesResult1;
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
