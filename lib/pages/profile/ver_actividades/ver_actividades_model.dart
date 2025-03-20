import '/components/custom_appbar_widget.dart';
import '/components/fast_access_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'ver_actividades_widget.dart' show VerActividadesWidget;
import 'package:flutter/material.dart';

class VerActividadesModel extends FlutterFlowModel<VerActividadesWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for customAppbar component.
  late CustomAppbarModel customAppbarModel1;
  // Model for fastAccess component.
  late FastAccessModel fastAccessModel1;
  // Model for customAppbar component.
  late CustomAppbarModel customAppbarModel2;
  // Model for fastAccess component.
  late FastAccessModel fastAccessModel2;

  @override
  void initState(BuildContext context) {
    customAppbarModel1 = createModel(context, () => CustomAppbarModel());
    fastAccessModel1 = createModel(context, () => FastAccessModel());
    customAppbarModel2 = createModel(context, () => CustomAppbarModel());
    fastAccessModel2 = createModel(context, () => FastAccessModel());
  }

  @override
  void dispose() {
    customAppbarModel1.dispose();
    fastAccessModel1.dispose();
    customAppbarModel2.dispose();
    fastAccessModel2.dispose();
  }
}
