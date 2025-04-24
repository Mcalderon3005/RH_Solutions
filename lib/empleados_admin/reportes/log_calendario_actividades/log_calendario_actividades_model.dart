import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'log_calendario_actividades_widget.dart'
    show LogCalendarioActividadesWidget;
import 'package:flutter/material.dart';

class LogCalendarioActividadesModel
    extends FlutterFlowModel<LogCalendarioActividadesWidget> {
  ///  Local state fields for this page.

  List<ActividadesCalendarioRecord> calendarioActividadesListT = [];
  void addToCalendarioActividadesListT(ActividadesCalendarioRecord item) =>
      calendarioActividadesListT.add(item);
  void removeFromCalendarioActividadesListT(ActividadesCalendarioRecord item) =>
      calendarioActividadesListT.remove(item);
  void removeAtIndexFromCalendarioActividadesListT(int index) =>
      calendarioActividadesListT.removeAt(index);
  void insertAtIndexInCalendarioActividadesListT(
          int index, ActividadesCalendarioRecord item) =>
      calendarioActividadesListT.insert(index, item);
  void updateCalendarioActividadesListTAtIndex(
          int index, Function(ActividadesCalendarioRecord) updateFn) =>
      calendarioActividadesListT[index] =
          updateFn(calendarioActividadesListT[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in logCalendarioActividades widget.
  List<ActividadesCalendarioRecord>? calendarioActividadesList;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<ActividadesCalendarioRecord>();
  List<UsersRecord> simpleSearchResults = [];
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<ActividadesCalendarioRecord>? listViewPreviousSnapshot;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    paginatedDataTableController.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
