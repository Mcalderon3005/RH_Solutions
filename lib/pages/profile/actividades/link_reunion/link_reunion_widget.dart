import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'link_reunion_model.dart';
export 'link_reunion_model.dart';

class LinkReunionWidget extends StatefulWidget {
  /// Generar un componente que diga "Unirse a la reunion" y una X para cerrar
  const LinkReunionWidget({super.key});

  @override
  State<LinkReunionWidget> createState() => _LinkReunionWidgetState();
}

class _LinkReunionWidgetState extends State<LinkReunionWidget> {
  late LinkReunionModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LinkReunionModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        boxShadow: const [
          BoxShadow(
            blurRadius: 4.0,
            color: Color(0x33000000),
            offset: Offset(
              0.0,
              2.0,
            ),
            spreadRadius: 0.0,
          )
        ],
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Unirse a la reunión',
              style: FlutterFlowTheme.of(context).titleMedium.override(
                    fontFamily: 'Manrope',
                    color: FlutterFlowTheme.of(context).primaryText,
                    letterSpacing: 0.0,
                  ),
            ),
            FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 15.0,
              buttonSize: 30.0,
              icon: Icon(
                Icons.close,
                color: FlutterFlowTheme.of(context).secondaryText,
                size: 20.0,
              ),
              onPressed: () {
                print('IconButton pressed ...');
              },
            ),
          ],
        ),
      ),
    );
  }
}
