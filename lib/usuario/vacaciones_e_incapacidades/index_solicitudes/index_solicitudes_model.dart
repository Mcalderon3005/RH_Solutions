import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'index_solicitudes_widget.dart' show IndexSolicitudesWidget;
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart'
    show TutorialCoachMark;
import 'package:flutter/material.dart';

class IndexSolicitudesModel extends FlutterFlowModel<IndexSolicitudesWidget> {
  ///  Local state fields for this page.

  List<SolicitudVacacionesRecord> vacacionesListU = [];
  void addToVacacionesListU(SolicitudVacacionesRecord item) =>
      vacacionesListU.add(item);
  void removeFromVacacionesListU(SolicitudVacacionesRecord item) =>
      vacacionesListU.remove(item);
  void removeAtIndexFromVacacionesListU(int index) =>
      vacacionesListU.removeAt(index);
  void insertAtIndexInVacacionesListU(
          int index, SolicitudVacacionesRecord item) =>
      vacacionesListU.insert(index, item);
  void updateVacacionesListUAtIndex(
          int index, Function(SolicitudVacacionesRecord) updateFn) =>
      vacacionesListU[index] = updateFn(vacacionesListU[index]);

  ///  State fields for stateful widgets in this page.

  TutorialCoachMark? indexSolicitudesController;
  // Stores action output result for [Firestore Query - Query a collection] action in IndexSolicitudes widget.
  List<SolicitudVacacionesRecord>? vacacionesList;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<SolicitudVacacionesRecord>();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    indexSolicitudesController?.finish();
    paginatedDataTableController.dispose();
  }
}
