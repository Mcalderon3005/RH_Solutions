import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'index_incapacidades_model.dart';
export 'index_incapacidades_model.dart';

class IndexIncapacidadesWidget extends StatefulWidget {
  const IndexIncapacidadesWidget({super.key});

  static String routeName = 'indexIncapacidades';
  static String routePath = 'indexIncapacidades';

  @override
  State<IndexIncapacidadesWidget> createState() =>
      _IndexIncapacidadesWidgetState();
}

class _IndexIncapacidadesWidgetState extends State<IndexIncapacidadesWidget> {
  late IndexIncapacidadesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IndexIncapacidadesModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'indexIncapacidades'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('INDEX_INCAPACIDADES_indexIncapacidades_O');
      logFirebaseEvent('indexIncapacidades_firestore_query');
      _model.incapacidadesList = await queryIncapacidadesRecordOnce();
      logFirebaseEvent('indexIncapacidades_update_page_state');
      _model.incapacidadesListU =
          _model.incapacidadesList!.toList().cast<IncapacidadesRecord>();
      safeSetState(() {});
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            if (responsiveVisibility(
              context: context,
              phone: false,
            ))
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: AlignmentDirectional(1.0, 0.0),
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: MediaQuery.sizeOf(context).height * 1.0,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Color(0xFF013260), Colors.black],
                          stops: [0.0, 1.0],
                          begin: AlignmentDirectional(0.0, -1.0),
                          end: AlignmentDirectional(0, 1.0),
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(24.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 70.0,
                                  height: 52.0,
                                  decoration: BoxDecoration(
                                    color: Color(0x00FFFFFF),
                                  ),
                                  child: FlutterFlowIconButton(
                                    borderRadius: 10.0,
                                    buttonSize: 850.0,
                                    icon: Icon(
                                      Icons.arrow_back,
                                      color: Colors.white,
                                      size: 28.0,
                                    ),
                                    onPressed: () async {
                                      logFirebaseEvent(
                                          'INDEX_INCAPACIDADES_arrow_back_ICN_ON_TA');
                                      logFirebaseEvent(
                                          'IconButton_navigate_to');

                                      context.pushNamed(
                                          ModuloVacacionesWidget.routeName);
                                    },
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 24.0, 0.0, 20.0),
                                    child: Text(
                                      'Solicitudes de Incapacidades',
                                      style: FlutterFlowTheme.of(context)
                                          .displaySmall
                                          .override(
                                            fontFamily: 'Outfit',
                                            color: Colors.white,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Builder(
                                    builder: (context) {
                                      final incapacidadesListUM =
                                          _model.incapacidadesListU.toList();

                                      return FlutterFlowDataTable<
                                          IncapacidadesRecord>(
                                        controller:
                                            _model.paginatedDataTableController,
                                        data: incapacidadesListUM,
                                        columnsBuilder: (onSortChanged) => [
                                          DataColumn2(
                                            label: DefaultTextStyle.merge(
                                              softWrap: true,
                                              child: Text(
                                                'Fecha Solicitud',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelLarge
                                                        .override(
                                                          fontFamily: 'Manrope',
                                                          color:
                                                              Color(0xFF8D97A5),
                                                          fontSize: 18.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                          ),
                                          DataColumn2(
                                            label: DefaultTextStyle.merge(
                                              softWrap: true,
                                              child: Text(
                                                'Inicio',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelLarge
                                                        .override(
                                                          fontFamily: 'Manrope',
                                                          color:
                                                              Color(0xFF8D97A5),
                                                          fontSize: 18.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                          ),
                                          DataColumn2(
                                            label: DefaultTextStyle.merge(
                                              softWrap: true,
                                              child: Text(
                                                'Fin',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelLarge
                                                        .override(
                                                          fontFamily: 'Manrope',
                                                          color:
                                                              Color(0xFF8D97A5),
                                                          fontSize: 18.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                          ),
                                          DataColumn2(
                                            label: DefaultTextStyle.merge(
                                              softWrap: true,
                                              child: Text(
                                                'Revision',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelLarge
                                                        .override(
                                                          fontFamily: 'Manrope',
                                                          color:
                                                              Color(0xFF8D97A5),
                                                          fontSize: 18.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                          ),
                                        ],
                                        dataRowBuilder:
                                            (incapacidadesListUMItem,
                                                    incapacidadesListUMIndex,
                                                    selected,
                                                    onSelectChanged) =>
                                                DataRow(
                                          color: WidgetStateProperty.all(
                                            incapacidadesListUMIndex % 2 == 0
                                                ? Color(0x00FFFFFF)
                                                : Color(0x00F0F5F9),
                                          ),
                                          cells: [
                                            Text(
                                              valueOrDefault<String>(
                                                dateTimeFormat(
                                                  "d/M/y",
                                                  incapacidadesListUMItem
                                                      .fechaSubida,
                                                  locale: FFLocalizations.of(
                                                          context)
                                                      .languageCode,
                                                ),
                                                '0/0/0',
                                              ).maybeHandleOverflow(
                                                maxChars: 20,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Manrope',
                                                        color: Colors.white,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            Text(
                                              valueOrDefault<String>(
                                                dateTimeFormat(
                                                  "d/M/y",
                                                  incapacidadesListUMItem
                                                      .fechaInicio,
                                                  locale: FFLocalizations.of(
                                                          context)
                                                      .languageCode,
                                                ),
                                                '0/0/0',
                                              ).maybeHandleOverflow(
                                                maxChars: 20,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Manrope',
                                                        color: Colors.white,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            Text(
                                              valueOrDefault<String>(
                                                dateTimeFormat(
                                                  "d/M/y",
                                                  incapacidadesListUMItem
                                                      .fechaFin,
                                                  locale: FFLocalizations.of(
                                                          context)
                                                      .languageCode,
                                                ),
                                                '0/0/0',
                                              ).maybeHandleOverflow(
                                                maxChars: 20,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Manrope',
                                                        color: Colors.white,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            Text(
                                              incapacidadesListUMItem
                                                          .estadoRevision ==
                                                      false
                                                  ? 'Pendiente'
                                                  : 'Revisado',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Manrope',
                                                        color: Colors.white,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ].map((c) => DataCell(c)).toList(),
                                        ),
                                        paginated: true,
                                        selectable: false,
                                        hidePaginator: false,
                                        showFirstLastButtons: false,
                                        headingRowHeight: 56.0,
                                        dataRowHeight: 48.0,
                                        columnSpacing: 20.0,
                                        headingRowColor: Color(0x002797FF),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        addHorizontalDivider: true,
                                        addTopAndBottomDivider: false,
                                        hideDefaultHorizontalDivider: true,
                                        horizontalDividerColor:
                                            FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                        horizontalDividerThickness: 1.0,
                                        addVerticalDivider: false,
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            if (responsiveVisibility(
              context: context,
              tablet: false,
              tabletLandscape: false,
              desktop: false,
            ))
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: AlignmentDirectional(1.0, 0.0),
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: MediaQuery.sizeOf(context).height * 1.0,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Color(0xFF013260), Colors.black],
                          stops: [0.0, 1.0],
                          begin: AlignmentDirectional(0.0, -1.0),
                          end: AlignmentDirectional(0, 1.0),
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(24.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 70.0,
                                  height: 52.0,
                                  decoration: BoxDecoration(
                                    color: Color(0x00FFFFFF),
                                  ),
                                  child: FlutterFlowIconButton(
                                    borderRadius: 10.0,
                                    buttonSize: 850.0,
                                    icon: Icon(
                                      Icons.arrow_back,
                                      color: Colors.white,
                                      size: 28.0,
                                    ),
                                    onPressed: () async {
                                      logFirebaseEvent(
                                          'INDEX_INCAPACIDADES_arrow_back_ICN_ON_TA');
                                      logFirebaseEvent(
                                          'IconButton_navigate_to');

                                      context.pushNamed(
                                          ModuloVacacionesWidget.routeName);
                                    },
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 24.0, 0.0, 20.0),
                                    child: Text(
                                      'Incapacidades',
                                      style: FlutterFlowTheme.of(context)
                                          .displaySmall
                                          .override(
                                            fontFamily: 'Outfit',
                                            color: Colors.white,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width:
                                      MediaQuery.sizeOf(context).width * 0.874,
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.775,
                                  decoration: BoxDecoration(),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 30.0, 0.0, 0.0),
                                    child: StreamBuilder<
                                        List<IncapacidadesRecord>>(
                                      stream: queryIncapacidadesRecord(),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50.0,
                                              height: 50.0,
                                              child: CircularProgressIndicator(
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        List<IncapacidadesRecord>
                                            listViewIncapacidadesRecordList =
                                            snapshot.data!;

                                        return ListView.builder(
                                          padding: EdgeInsets.zero,
                                          shrinkWrap: true,
                                          scrollDirection: Axis.vertical,
                                          itemCount:
                                              listViewIncapacidadesRecordList
                                                  .length,
                                          itemBuilder:
                                              (context, listViewIndex) {
                                            final listViewIncapacidadesRecord =
                                                listViewIncapacidadesRecordList[
                                                    listViewIndex];
                                            return Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 10.0, 0.0, 0.0),
                                              child: Container(
                                                width: 80.6,
                                                height: 150.7,
                                                decoration: BoxDecoration(
                                                  color: Color(0x40FFFFFF),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          16.0),
                                                ),
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: SingleChildScrollView(
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      10.0,
                                                                      5.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            10.0,
                                                                            5.0),
                                                                child: Text(
                                                                  'Fecha\nSolicitud:',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Manrope',
                                                                        color: Colors
                                                                            .white,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                              ),
                                                              Text(
                                                                valueOrDefault<
                                                                    String>(
                                                                  dateTimeFormat(
                                                                    "d/M/y",
                                                                    listViewIncapacidadesRecord
                                                                        .fechaSubida,
                                                                    locale: FFLocalizations.of(
                                                                            context)
                                                                        .languageCode,
                                                                  ),
                                                                  '0/0/0',
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Manrope',
                                                                      color: Colors
                                                                          .white,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      10.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            10.0,
                                                                            5.0),
                                                                child: Text(
                                                                  'Fecha Incio:',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Manrope',
                                                                        color: Colors
                                                                            .white,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                              ),
                                                              Text(
                                                                valueOrDefault<
                                                                    String>(
                                                                  dateTimeFormat(
                                                                    "d/M/y",
                                                                    listViewIncapacidadesRecord
                                                                        .fechaInicio,
                                                                    locale: FFLocalizations.of(
                                                                            context)
                                                                        .languageCode,
                                                                  ),
                                                                  '0/0/0',
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Manrope',
                                                                      color: Colors
                                                                          .white,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      10.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            10.0,
                                                                            5.0),
                                                                child: Text(
                                                                  'Fecha Fin:',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Manrope',
                                                                        color: Colors
                                                                            .white,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                              ),
                                                              Text(
                                                                valueOrDefault<
                                                                    String>(
                                                                  dateTimeFormat(
                                                                    "d/M/y",
                                                                    listViewIncapacidadesRecord
                                                                        .fechaFin,
                                                                    locale: FFLocalizations.of(
                                                                            context)
                                                                        .languageCode,
                                                                  ),
                                                                  '0/0/0',
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Manrope',
                                                                      color: Colors
                                                                          .white,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      10.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            10.0,
                                                                            5.0),
                                                                child: Text(
                                                                  'Revision:',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Manrope',
                                                                        color: Colors
                                                                            .white,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                              ),
                                                              Text(
                                                                listViewIncapacidadesRecord
                                                                            .estadoRevision ==
                                                                        false
                                                                    ? 'Pendiente'
                                                                    : 'Revisado',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Manrope',
                                                                      color: Colors
                                                                          .white,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            );
                                          },
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
