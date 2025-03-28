import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'facturacion_widget.dart' show FacturacionWidget;
import 'package:flutter/material.dart';

class FacturacionModel extends FlutterFlowModel<FacturacionWidget> {
  ///  Local state fields for this page.

  List<PagosRecord> facturacionList = [];
  void addToFacturacionList(PagosRecord item) => facturacionList.add(item);
  void removeFromFacturacionList(PagosRecord item) =>
      facturacionList.remove(item);
  void removeAtIndexFromFacturacionList(int index) =>
      facturacionList.removeAt(index);
  void insertAtIndexInFacturacionList(int index, PagosRecord item) =>
      facturacionList.insert(index, item);
  void updateFacturacionListAtIndex(
          int index, Function(PagosRecord) updateFn) =>
      facturacionList[index] = updateFn(facturacionList[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in Facturacion widget.
  List<PagosRecord>? facturacionListU;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<PagosRecord>();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    paginatedDataTableController.dispose();
  }
}
