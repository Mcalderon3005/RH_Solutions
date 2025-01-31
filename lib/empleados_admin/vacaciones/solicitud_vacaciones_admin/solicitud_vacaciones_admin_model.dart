import '/components/custom_appbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'solicitud_vacaciones_admin_widget.dart'
    show SolicitudVacacionesAdminWidget;
import 'package:flutter/material.dart';

class SolicitudVacacionesAdminModel
    extends FlutterFlowModel<SolicitudVacacionesAdminWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for customAppbar component.
  late CustomAppbarModel customAppbarModel;

  @override
  void initState(BuildContext context) {
    customAppbarModel = createModel(context, () => CustomAppbarModel());
  }

  @override
  void dispose() {
    customAppbarModel.dispose();
  }
}
