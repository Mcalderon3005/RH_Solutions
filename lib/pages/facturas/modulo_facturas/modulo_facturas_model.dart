import '/components/custom_appbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'modulo_facturas_widget.dart' show ModuloFacturasWidget;
import 'package:flutter/material.dart';

class ModuloFacturasModel extends FlutterFlowModel<ModuloFacturasWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for customAppbar component.
  late CustomAppbarModel customAppbarModel1;
  // Model for customAppbar component.
  late CustomAppbarModel customAppbarModel2;

  @override
  void initState(BuildContext context) {
    customAppbarModel1 = createModel(context, () => CustomAppbarModel());
    customAppbarModel2 = createModel(context, () => CustomAppbarModel());
  }

  @override
  void dispose() {
    customAppbarModel1.dispose();
    customAppbarModel2.dispose();
  }
}
