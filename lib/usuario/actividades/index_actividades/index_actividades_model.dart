import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'index_actividades_widget.dart' show IndexActividadesWidget;
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart'
    show TutorialCoachMark;
import 'package:flutter/material.dart';

class IndexActividadesModel extends FlutterFlowModel<IndexActividadesWidget> {
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

  TutorialCoachMark? indexActividadesController;
  // Stores action output result for [Firestore Query - Query a collection] action in indexActividades widget.
  List<ReunionesRecord>? actividadesList;
  // State field(s) for txtBuscar widget.
  FocusNode? txtBuscarFocusNode1;
  TextEditingController? txtBuscarTextController1;
  String? Function(BuildContext, String?)? txtBuscarTextController1Validator;
  List<ReunionesRecord> simpleSearchResults1 = [];
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<ReunionesRecord>();
  // State field(s) for txtBuscar widget.
  FocusNode? txtBuscarFocusNode2;
  TextEditingController? txtBuscarTextController2;
  String? Function(BuildContext, String?)? txtBuscarTextController2Validator;
  List<ReunionesRecord> simpleSearchResults2 = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    indexActividadesController?.finish();
    txtBuscarFocusNode1?.dispose();
    txtBuscarTextController1?.dispose();

    paginatedDataTableController.dispose();
    txtBuscarFocusNode2?.dispose();
    txtBuscarTextController2?.dispose();
  }
}
