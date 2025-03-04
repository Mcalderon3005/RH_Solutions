import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'backbar_model.dart';
export 'backbar_model.dart';

/// Quiero un componente de una barra superior que de la opcion de volver
/// atravez de un icono
class BackbarWidget extends StatefulWidget {
  const BackbarWidget({super.key});

  @override
  State<BackbarWidget> createState() => _BackbarWidgetState();
}

class _BackbarWidgetState extends State<BackbarWidget> {
  late BackbarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BackbarModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0x00FFFFFF),
      automaticallyImplyLeading: false,
      leading: FlutterFlowIconButton(
        borderColor: Colors.transparent,
        borderRadius: 16.0,
        borderWidth: 1.0,
        buttonSize: 40.0,
        fillColor: Color(0xFFFFF8F8),
        icon: Icon(
          Icons.chevron_left,
          color: Colors.black,
          size: 24.0,
        ),
        onPressed: () {
          print('IconButton pressed ...');
        },
      ),
      actions: [],
      centerTitle: false,
      elevation: 0.0,
    );
  }
}
