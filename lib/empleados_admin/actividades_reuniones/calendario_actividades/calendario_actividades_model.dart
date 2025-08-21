import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'calendario_actividades_widget.dart' show CalendarioActividadesWidget;
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart'
    show TutorialCoachMark;
import 'package:flutter/material.dart';

class CalendarioActividadesModel
    extends FlutterFlowModel<CalendarioActividadesWidget> {
  ///  Local state fields for this page.

  List<ReunionesRecord> actividadesList = [];
  void addToActividadesList(ReunionesRecord item) => actividadesList.add(item);
  void removeFromActividadesList(ReunionesRecord item) =>
      actividadesList.remove(item);
  void removeAtIndexFromActividadesList(int index) =>
      actividadesList.removeAt(index);
  void insertAtIndexInActividadesList(int index, ReunionesRecord item) =>
      actividadesList.insert(index, item);
  void updateActividadesListAtIndex(
          int index, Function(ReunionesRecord) updateFn) =>
      actividadesList[index] = updateFn(actividadesList[index]);

  List<ReunionesRecord> actividadesBuscar = [];
  void addToActividadesBuscar(ReunionesRecord item) =>
      actividadesBuscar.add(item);
  void removeFromActividadesBuscar(ReunionesRecord item) =>
      actividadesBuscar.remove(item);
  void removeAtIndexFromActividadesBuscar(int index) =>
      actividadesBuscar.removeAt(index);
  void insertAtIndexInActividadesBuscar(int index, ReunionesRecord item) =>
      actividadesBuscar.insert(index, item);
  void updateActividadesBuscarAtIndex(
          int index, Function(ReunionesRecord) updateFn) =>
      actividadesBuscar[index] = updateFn(actividadesBuscar[index]);

  ///  State fields for stateful widgets in this page.

  TutorialCoachMark? calendarioActividadesController;
  // Stores action output result for [Firestore Query - Query a collection] action in CalendarioActividades widget.
  List<ReunionesRecord>? actividadesListU;
  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay1;
  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay2;

  @override
  void initState(BuildContext context) {
    calendarSelectedDay1 = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
    calendarSelectedDay2 = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
  }

  @override
  void dispose() {
    calendarioActividadesController?.finish();
  }
}
