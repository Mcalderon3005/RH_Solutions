import '/components/custom_appbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'modulo_actividades_widget.dart' show ModuloActividadesWidget;
import 'package:flutter/material.dart';

class ModuloActividadesModel extends FlutterFlowModel<ModuloActividadesWidget> {
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
