import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'calendario_actividades_usuario_widget.dart'
    show CalendarioActividadesUsuarioWidget;
import 'package:flutter/material.dart';

class CalendarioActividadesUsuarioModel
    extends FlutterFlowModel<CalendarioActividadesUsuarioWidget> {
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

  List<ReunionesRecord> busquedaActividades = [];
  void addToBusquedaActividades(ReunionesRecord item) =>
      busquedaActividades.add(item);
  void removeFromBusquedaActividades(ReunionesRecord item) =>
      busquedaActividades.remove(item);
  void removeAtIndexFromBusquedaActividades(int index) =>
      busquedaActividades.removeAt(index);
  void insertAtIndexInBusquedaActividades(int index, ReunionesRecord item) =>
      busquedaActividades.insert(index, item);
  void updateBusquedaActividadesAtIndex(
          int index, Function(ReunionesRecord) updateFn) =>
      busquedaActividades[index] = updateFn(busquedaActividades[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in calendarioActividadesUsuario widget.
  List<ReunionesRecord>? actividadesList;
  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay;

  @override
  void initState(BuildContext context) {
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
  }

  @override
  void dispose() {}
}
