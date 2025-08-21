import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
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

  List<HorarioErroresRecord> horarioErroresListView = [];
  void addToHorarioErroresListView(HorarioErroresRecord item) =>
      horarioErroresListView.add(item);
  void removeFromHorarioErroresListView(HorarioErroresRecord item) =>
      horarioErroresListView.remove(item);
  void removeAtIndexFromHorarioErroresListView(int index) =>
      horarioErroresListView.removeAt(index);
  void insertAtIndexInHorarioErroresListView(
          int index, HorarioErroresRecord item) =>
      horarioErroresListView.insert(index, item);
  void updateHorarioErroresListViewAtIndex(
          int index, Function(HorarioErroresRecord) updateFn) =>
      horarioErroresListView[index] = updateFn(horarioErroresListView[index]);

  ///  State fields for stateful widgets in this page.

  TutorialCoachMark? logHorariosErroresController;
  // Stores action output result for [Firestore Query - Query a collection] action in logHorariosErrores widget.
  List<HorarioErroresRecord>? horarioErroresList;
  // Stores action output result for [Firestore Query - Query a collection] action in logHorariosErrores widget.
  List<UsersRecord>? usersList;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // Stores action output result for [Firestore Query - Query a collection] action in IconButton widget.
  List<HorarioErroresRecord>? horarioErroreslistCopy;
  DateTime? datePicked1;
  DateTime? datePicked2;
  // Stores action output result for [Firestore Query - Query a collection] action in IconButton widget.
  List<HorarioErroresRecord>? horarioerroresFix;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<HorarioErroresRecord>();
  List<UsersRecord> simpleSearchResults = [];
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // Stores action output result for [Firestore Query - Query a collection] action in DropDown widget.
  UsersRecord? userSingleDoc;
  // Stores action output result for [Firestore Query - Query a collection] action in IconButton widget.
  List<HorarioErroresRecord>? horarioErroreslist;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    logHorariosErroresController?.finish();
    paginatedDataTableController.dispose();
  }
}
