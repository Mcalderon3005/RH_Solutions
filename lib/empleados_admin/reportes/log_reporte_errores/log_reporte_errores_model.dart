import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'log_reporte_errores_widget.dart' show LogReporteErroresWidget;
import 'package:flutter/material.dart';

class LogReporteErroresModel extends FlutterFlowModel<LogReporteErroresWidget> {
  ///  Local state fields for this page.

  List<ReporteErroresRecord> reporteErroresListT = [];
  void addToReporteErroresListT(ReporteErroresRecord item) =>
      reporteErroresListT.add(item);
  void removeFromReporteErroresListT(ReporteErroresRecord item) =>
      reporteErroresListT.remove(item);
  void removeAtIndexFromReporteErroresListT(int index) =>
      reporteErroresListT.removeAt(index);
  void insertAtIndexInReporteErroresListT(
          int index, ReporteErroresRecord item) =>
      reporteErroresListT.insert(index, item);
  void updateReporteErroresListTAtIndex(
          int index, Function(ReporteErroresRecord) updateFn) =>
      reporteErroresListT[index] = updateFn(reporteErroresListT[index]);

  bool isShowingFullList = true;

  TipoError? tipoError;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in logReporteErrores widget.
  List<ReporteErroresRecord>? reporteErroresList;
  // Stores action output result for [Firestore Query - Query a collection] action in logReporteErrores widget.
  UsersRecord? userInfoSingle;
  // State field(s) for txtFiltroBuscar widget.
  FocusNode? txtFiltroBuscarFocusNode;
  TextEditingController? txtFiltroBuscarTextController;
  String? Function(BuildContext, String?)?
      txtFiltroBuscarTextControllerValidator;
  List<ReporteErroresRecord> simpleSearchResults = [];
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<ReporteErroresRecord>();
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  List<ReporteErroresRecord>? listViewPreviousSnapshot;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtFiltroBuscarFocusNode?.dispose();
    txtFiltroBuscarTextController?.dispose();

    paginatedDataTableController.dispose();
  }
}
