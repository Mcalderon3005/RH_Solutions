import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'facturacion_empleado_widget.dart' show FacturacionEmpleadoWidget;
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart'
    show TutorialCoachMark;
import 'package:flutter/material.dart';

class FacturacionEmpleadoModel
    extends FlutterFlowModel<FacturacionEmpleadoWidget> {
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

  TutorialCoachMark? facturacionEmpleadoController;
  // Stores action output result for [Firestore Query - Query a collection] action in FacturacionEmpleado widget.
  List<PagosRecord>? facturacionListU;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<PagosRecord>();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    facturacionEmpleadoController?.finish();
    paginatedDataTableController.dispose();
  }
}
