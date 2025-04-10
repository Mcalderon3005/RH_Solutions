import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'index_incapacidades_widget.dart' show IndexIncapacidadesWidget;
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart'
    show TutorialCoachMark;
import 'package:flutter/material.dart';

class IndexIncapacidadesModel
    extends FlutterFlowModel<IndexIncapacidadesWidget> {
  ///  Local state fields for this page.

  List<IncapacidadesRecord> incapacidadesListU = [];
  void addToIncapacidadesListU(IncapacidadesRecord item) =>
      incapacidadesListU.add(item);
  void removeFromIncapacidadesListU(IncapacidadesRecord item) =>
      incapacidadesListU.remove(item);
  void removeAtIndexFromIncapacidadesListU(int index) =>
      incapacidadesListU.removeAt(index);
  void insertAtIndexInIncapacidadesListU(int index, IncapacidadesRecord item) =>
      incapacidadesListU.insert(index, item);
  void updateIncapacidadesListUAtIndex(
          int index, Function(IncapacidadesRecord) updateFn) =>
      incapacidadesListU[index] = updateFn(incapacidadesListU[index]);

  ///  State fields for stateful widgets in this page.

  TutorialCoachMark? ttlIndexincapacidadesController;
  // Stores action output result for [Firestore Query - Query a collection] action in indexIncapacidades widget.
  List<IncapacidadesRecord>? incapacidadesList;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<IncapacidadesRecord>();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    ttlIndexincapacidadesController?.finish();
    paginatedDataTableController.dispose();
  }
}
