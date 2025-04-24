import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'solicitudes_index_widget.dart' show SolicitudesIndexWidget;
import 'package:flutter/material.dart';

class SolicitudesIndexModel extends FlutterFlowModel<SolicitudesIndexWidget> {
  ///  Local state fields for this page.

  List<SolicitudCambioPagoRecord> errorFacturasList = [];
  void addToErrorFacturasList(SolicitudCambioPagoRecord item) =>
      errorFacturasList.add(item);
  void removeFromErrorFacturasList(SolicitudCambioPagoRecord item) =>
      errorFacturasList.remove(item);
  void removeAtIndexFromErrorFacturasList(int index) =>
      errorFacturasList.removeAt(index);
  void insertAtIndexInErrorFacturasList(
          int index, SolicitudCambioPagoRecord item) =>
      errorFacturasList.insert(index, item);
  void updateErrorFacturasListAtIndex(
          int index, Function(SolicitudCambioPagoRecord) updateFn) =>
      errorFacturasList[index] = updateFn(errorFacturasList[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in Solicitudes_Index widget.
  List<SolicitudCambioPagoRecord>? errorFacturasListU;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<SolicitudCambioPagoRecord>();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    paginatedDataTableController.dispose();
  }
}
