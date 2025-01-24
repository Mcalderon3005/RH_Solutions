import '/components/custom_appbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'modulo_vacaciones_widget.dart' show ModuloVacacionesWidget;
import 'package:flutter/material.dart';

class ModuloVacacionesModel extends FlutterFlowModel<ModuloVacacionesWidget> {
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
