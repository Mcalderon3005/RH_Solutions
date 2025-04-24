import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'log_horarios_errores_widget.dart' show LogHorariosErroresWidget;
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart'
    show TutorialCoachMark;
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

  TutorialCoachMark? ttlLogHorariosErroresController;
  // Stores action output result for [Firestore Query - Query a collection] action in logHorariosErrores widget.
  List<HorarioErroresRecord>? horarioErroresList;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<HorarioErroresRecord>();
  List<UsersRecord> simpleSearchResults = [];
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<HorarioErroresRecord>? listViewPreviousSnapshot;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    ttlLogHorariosErroresController?.finish();
    paginatedDataTableController.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
