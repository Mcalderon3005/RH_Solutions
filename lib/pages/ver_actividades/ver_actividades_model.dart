import '/components/custom_appbar_widget.dart';
import '/components/fast_access_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'ver_actividades_widget.dart' show VerActividadesWidget;
import 'package:flutter/material.dart';

class VerActividadesModel extends FlutterFlowModel<VerActividadesWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for customAppbar component.
  late CustomAppbarModel customAppbarModel1;
  // Model for customAppbar component.
  late CustomAppbarModel customAppbarModel2;
  // Model for fastAccess component.
  late FastAccessModel fastAccessModel;

  @override
  void initState(BuildContext context) {
    customAppbarModel1 = createModel(context, () => CustomAppbarModel());
    customAppbarModel2 = createModel(context, () => CustomAppbarModel());
    fastAccessModel = createModel(context, () => FastAccessModel());
  }

  @override
  void dispose() {
    customAppbarModel1.dispose();
    customAppbarModel2.dispose();
    fastAccessModel.dispose();
  }
}
