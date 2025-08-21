import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'definir_actividad_admin_widget.dart' show DefinirActividadAdminWidget;
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart'
    show TutorialCoachMark;
import 'package:flutter/material.dart';

class DefinirActividadAdminModel
    extends FlutterFlowModel<DefinirActividadAdminWidget> {
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

  TutorialCoachMark? definirActividadAdminController;
  // Stores action output result for [Firestore Query - Query a collection] action in DefinirActividadAdmin widget.
  List<ReunionesRecord>? actividadesListU;
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
    definirActividadAdminController?.finish();
    txtBuscarFocusNode1?.dispose();
    txtBuscarTextController1?.dispose();

    paginatedDataTableController.dispose();
    txtBuscarFocusNode2?.dispose();
    txtBuscarTextController2?.dispose();
  }
}
