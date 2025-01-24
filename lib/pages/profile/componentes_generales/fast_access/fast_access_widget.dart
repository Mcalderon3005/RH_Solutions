import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'fast_access_model.dart';
export 'fast_access_model.dart';

class FastAccessWidget extends StatefulWidget {
  /// Quiero que me generes una barra en la parte inferior que muestre 5
  /// opciones
  const FastAccessWidget({super.key});

  @override
  State<FastAccessWidget> createState() => _FastAccessWidgetState();
}

class _FastAccessWidgetState extends State<FastAccessWidget> {
  late FastAccessModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FastAccessModel());

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
      height: 80.0,
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
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.person_3,
                  color: FlutterFlowTheme.of(context).primary,
                  size: 24.0,
                ),
                Text(
                  'Perfil',
                  style: FlutterFlowTheme.of(context).labelSmall.override(
                        fontFamily: 'Manrope',
                        letterSpacing: 0.0,
                      ),
                ),
              ].divide(const SizedBox(height: 4.0)),
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.add_reaction,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  size: 24.0,
                ),
                Text(
                  'Actividades',
                  style: FlutterFlowTheme.of(context).labelSmall.override(
                        fontFamily: 'Manrope',
                        color: FlutterFlowTheme.of(context).secondaryText,
                        letterSpacing: 0.0,
                      ),
                ),
              ].divide(const SizedBox(height: 4.0)),
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 36.0,
                  height: 36.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primary,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.home,
                    color: FlutterFlowTheme.of(context).info,
                    size: 24.0,
                  ),
                ),
                Text(
                  'Home',
                  style: FlutterFlowTheme.of(context).labelSmall.override(
                        fontFamily: 'Manrope',
                        color: FlutterFlowTheme.of(context).secondaryText,
                        letterSpacing: 0.0,
                      ),
                ),
              ].divide(const SizedBox(height: 4.0)),
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.receipt_outlined,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  size: 24.0,
                ),
                Text(
                  'Facturas',
                  style: FlutterFlowTheme.of(context).labelSmall.override(
                        fontFamily: 'Manrope',
                        color: FlutterFlowTheme.of(context).secondaryText,
                        letterSpacing: 0.0,
                      ),
                ),
              ].divide(const SizedBox(height: 4.0)),
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.person_outline_rounded,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  size: 24.0,
                ),
                Text(
                  'Vacaciones',
                  style: FlutterFlowTheme.of(context).labelSmall.override(
                        fontFamily: 'Manrope',
                        color: FlutterFlowTheme.of(context).secondaryText,
                        letterSpacing: 0.0,
                      ),
                ),
              ].divide(const SizedBox(height: 4.0)),
            ),
          ],
        ),
      ),
    );
  }
}
