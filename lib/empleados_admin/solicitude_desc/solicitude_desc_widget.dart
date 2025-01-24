import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'solicitude_desc_model.dart';
export 'solicitude_desc_model.dart';

class SolicitudeDescWidget extends StatefulWidget {
  const SolicitudeDescWidget({
    super.key,
    required this.expandedAccordionIndex,
    required this.accordionIndex,
    required this.question,
    required this.answer,
    required this.action,
  });

  final int? expandedAccordionIndex;
  final int? accordionIndex;
  final String? question;
  final String? answer;
  final Future Function()? action;

  @override
  State<SolicitudeDescWidget> createState() => _SolicitudeDescWidgetState();
}

class _SolicitudeDescWidgetState extends State<SolicitudeDescWidget> {
  late SolicitudeDescModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SolicitudeDescModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  logFirebaseEvent('SOLICITUDE_DESC_COMP_Row_1h9purvk_ON_TAP');
                  logFirebaseEvent('Row_execute_callback');
                  await widget.action?.call();
                },
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Text(
                        'Descripcion',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Manrope',
                              fontSize: 16.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                              lineHeight: 1.2,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              if (widget.expandedAccordionIndex == widget.accordionIndex)
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 6.0),
                  child: Text(
                    'Vacaciones familiares',
                    style: FlutterFlowTheme.of(context).labelLarge.override(
                          fontFamily: 'Manrope',
                          letterSpacing: 0.0,
                          lineHeight: 1.4,
                        ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
