import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'horarios_admin_seleccion_widget.dart' show HorariosAdminSeleccionWidget;
import 'package:flutter/material.dart';

class HorariosAdminSeleccionModel
    extends FlutterFlowModel<HorariosAdminSeleccionWidget> {
  ///  Local state fields for this page.

  List<HorariosRecord> filtroVar = [];
  void addToFiltroVar(HorariosRecord item) => filtroVar.add(item);
  void removeFromFiltroVar(HorariosRecord item) => filtroVar.remove(item);
  void removeAtIndexFromFiltroVar(int index) => filtroVar.removeAt(index);
  void insertAtIndexInFiltroVar(int index, HorariosRecord item) =>
      filtroVar.insert(index, item);
  void updateFiltroVarAtIndex(int index, Function(HorariosRecord) updateFn) =>
      filtroVar[index] = updateFn(filtroVar[index]);

  ///  State fields for stateful widgets in this page.

  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // Stores action output result for [Firestore Query - Query a collection] action in DropDown widget.
  UsersRecord? userInfo2;
  // Stores action output result for [Firestore Query - Query a collection] action in IconButton widget.
  List<HorariosRecord>? userIndex1;
  DateTime? datePicked1;
  DateTime? datePicked2;
  // Stores action output result for [Firestore Query - Query a collection] action in IconButton widget.
  List<HorariosRecord>? dateIndex1;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // Stores action output result for [Firestore Query - Query a collection] action in DropDown widget.
  UsersRecord? userInfo1;
  // Stores action output result for [Firestore Query - Query a collection] action in IconButton widget.
  List<HorariosRecord>? userIndex;
  DateTime? datePicked3;
  DateTime? datePicked4;
  // Stores action output result for [Firestore Query - Query a collection] action in IconButton widget.
  List<HorariosRecord>? dateIndex;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
