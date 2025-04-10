import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'log_horarios_errores_widget.dart' show LogHorariosErroresWidget;
import 'package:flutter/material.dart';

class LogHorariosErroresModel
    extends FlutterFlowModel<LogHorariosErroresWidget> {
  ///  Local state fields for this page.

  List<HorarioErroresRecord> horarioErroresListT = [];
  void addToHorarioErroresListT(HorarioErroresRecord item) =>
      horarioErroresListT.add(item);
  void removeFromHorarioErroresListT(HorarioErroresRecord item) =>
      horarioErroresListT.remove(item);
  void removeAtIndexFromHorarioErroresListT(int index) =>
      horarioErroresListT.removeAt(index);
  void insertAtIndexInHorarioErroresListT(
          int index, HorarioErroresRecord item) =>
      horarioErroresListT.insert(index, item);
  void updateHorarioErroresListTAtIndex(
          int index, Function(HorarioErroresRecord) updateFn) =>
      horarioErroresListT[index] = updateFn(horarioErroresListT[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in logHorariosErrores widget.
  List<HorarioErroresRecord>? horarioErroresList;
  List<UsersRecord> simpleSearchResults = [];
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<LogSesionRecord>? listViewPreviousSnapshot;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<HorarioErroresRecord>();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    paginatedDataTableController.dispose();
  }
}
