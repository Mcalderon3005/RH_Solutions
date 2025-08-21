import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart'
    show TutorialCoachMark;
import 'solicitudes_incapacidades_detalle_widget.dart'
    show SolicitudesIncapacidadesDetalleWidget;
import 'package:flutter/material.dart';

class SolicitudesIncapacidadesDetalleModel
    extends FlutterFlowModel<SolicitudesIncapacidadesDetalleWidget> {
  ///  State fields for stateful widgets in this page.

  TutorialCoachMark? solicitudesIncapacidadesDetalleController;
  // Stores action output result for [Firestore Query - Query a collection] action in solicitudesIncapacidadesDetalle widget.
  UsersRecord? userInfoSingle;
  // State field(s) for Switch widget.
  bool? switchValue1;
  // State field(s) for Switch widget.
  bool? switchValue2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    solicitudesIncapacidadesDetalleController?.finish();
  }
}
