import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'horario_widget.dart' show HorarioWidget;
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart'
    show TutorialCoachMark;
import 'package:flutter/material.dart';

class HorarioModel extends FlutterFlowModel<HorarioWidget> {
  ///  Local state fields for this page.

  List<HorariosRecord> horariosList = [];
  void addToHorariosList(HorariosRecord item) => horariosList.add(item);
  void removeFromHorariosList(HorariosRecord item) => horariosList.remove(item);
  void removeAtIndexFromHorariosList(int index) => horariosList.removeAt(index);
  void insertAtIndexInHorariosList(int index, HorariosRecord item) =>
      horariosList.insert(index, item);
  void updateHorariosListAtIndex(
          int index, Function(HorariosRecord) updateFn) =>
      horariosList[index] = updateFn(horariosList[index]);

  ///  State fields for stateful widgets in this page.

  TutorialCoachMark? ttlHorarioController;
  // Stores action output result for [Firestore Query - Query a collection] action in Horario widget.
  List<HorariosRecord>? horariosListU;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<HorariosRecord>();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    ttlHorarioController?.finish();
    paginatedDataTableController.dispose();
  }
}
