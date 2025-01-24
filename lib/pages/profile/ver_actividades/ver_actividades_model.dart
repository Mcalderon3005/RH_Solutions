import '/components/custom_appbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/profile/componentes_generales/fast_access/fast_access_widget.dart';
import 'ver_actividades_widget.dart' show VerActividadesWidget;
import 'package:flutter/material.dart';

class VerActividadesModel extends FlutterFlowModel<VerActividadesWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for customAppbar component.
  late CustomAppbarModel customAppbarModel;
  // Model for fastAccess component.
  late FastAccessModel fastAccessModel;

  @override
  void initState(BuildContext context) {
    customAppbarModel = createModel(context, () => CustomAppbarModel());
    fastAccessModel = createModel(context, () => FastAccessModel());
  }

  @override
  void dispose() {
    customAppbarModel.dispose();
    fastAccessModel.dispose();
  }
}
