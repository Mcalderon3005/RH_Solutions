import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'index_actividades_widget.dart' show IndexActividadesWidget;
import 'package:flutter/material.dart';

class IndexActividadesModel extends FlutterFlowModel<IndexActividadesWidget> {
  ///  Local state fields for this page.

  List<ReunionesRecord> actividadesListU = [];
  void addToActividadesListU(ReunionesRecord item) =>
      actividadesListU.add(item);
  void removeFromActividadesListU(ReunionesRecord item) =>
      actividadesListU.remove(item);
  void removeAtIndexFromActividadesListU(int index) =>
      actividadesListU.removeAt(index);
  void insertAtIndexInActividadesListU(int index, ReunionesRecord item) =>
      actividadesListU.insert(index, item);
  void updateActividadesListUAtIndex(
          int index, Function(ReunionesRecord) updateFn) =>
      actividadesListU[index] = updateFn(actividadesListU[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in indexActividades widget.
  List<ReunionesRecord>? actividadesList;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<ReunionesRecord>();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    paginatedDataTableController.dispose();
  }
}
