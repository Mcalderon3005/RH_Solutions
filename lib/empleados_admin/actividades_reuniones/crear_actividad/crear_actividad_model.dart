import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'crear_actividad_widget.dart' show CrearActividadWidget;
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart'
    show TutorialCoachMark;
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class CrearActividadModel extends FlutterFlowModel<CrearActividadWidget> {
  ///  State fields for stateful widgets in this page.

  TutorialCoachMark? crearActividadController;
  DateTime? datePicked1;
  // State field(s) for txtEnlace widget.
  FocusNode? txtEnlaceFocusNode1;
  TextEditingController? txtEnlaceTextController1;
  String? Function(BuildContext, String?)? txtEnlaceTextController1Validator;
  // State field(s) for txtAsunto widget.
  FocusNode? txtAsuntoFocusNode1;
  TextEditingController? txtAsuntoTextController1;
  String? Function(BuildContext, String?)? txtAsuntoTextController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for ListView widget.

  PagingController<DocumentSnapshot?, UsersRecord>? listViewPagingController1;
  Query? listViewPagingQuery1;
  List<StreamSubscription?> listViewStreamSubscriptions1 = [];

  // State field(s) for CheckboxListTile widget.
  Map<UsersRecord, bool> checkboxListTileValueMap1 = {};
  List<UsersRecord> get checkboxListTileCheckedItems1 =>
      checkboxListTileValueMap1.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  // Stores action output result for [Custom Action - contadorFuncion] action in Button widget.
  int? countCA;
  DateTime? datePicked2;
  // State field(s) for txtEnlace widget.
  FocusNode? txtEnlaceFocusNode2;
  TextEditingController? txtEnlaceTextController2;
  String? Function(BuildContext, String?)? txtEnlaceTextController2Validator;
  // State field(s) for txtAsunto widget.
  FocusNode? txtAsuntoFocusNode2;
  TextEditingController? txtAsuntoTextController2;
  String? Function(BuildContext, String?)? txtAsuntoTextController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController6;
  String? Function(BuildContext, String?)? textController6Validator;
  // State field(s) for ListView widget.

  PagingController<DocumentSnapshot?, UsersRecord>? listViewPagingController2;
  Query? listViewPagingQuery2;
  List<StreamSubscription?> listViewStreamSubscriptions2 = [];

  // State field(s) for CheckboxListTile widget.
  Map<UsersRecord, bool> checkboxListTileValueMap2 = {};
  List<UsersRecord> get checkboxListTileCheckedItems2 =>
      checkboxListTileValueMap2.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  // Stores action output result for [Custom Action - contadorFuncion] action in Button widget.
  int? countCACopy;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    crearActividadController?.finish();
    txtEnlaceFocusNode1?.dispose();
    txtEnlaceTextController1?.dispose();

    txtAsuntoFocusNode1?.dispose();
    txtAsuntoTextController1?.dispose();

    textFieldFocusNode1?.dispose();
    textController3?.dispose();

    listViewStreamSubscriptions1.forEach((s) => s?.cancel());
    listViewPagingController1?.dispose();

    txtEnlaceFocusNode2?.dispose();
    txtEnlaceTextController2?.dispose();

    txtAsuntoFocusNode2?.dispose();
    txtAsuntoTextController2?.dispose();

    textFieldFocusNode2?.dispose();
    textController6?.dispose();

    listViewStreamSubscriptions2.forEach((s) => s?.cancel());
    listViewPagingController2?.dispose();
  }

  /// Additional helper methods.
  PagingController<DocumentSnapshot?, UsersRecord> setListViewController1(
    Query query, {
    DocumentReference<Object?>? parent,
  }) {
    listViewPagingController1 ??= _createListViewController1(query, parent);
    if (listViewPagingQuery1 != query) {
      listViewPagingQuery1 = query;
      listViewPagingController1?.refresh();
    }
    return listViewPagingController1!;
  }

  PagingController<DocumentSnapshot?, UsersRecord> _createListViewController1(
    Query query,
    DocumentReference<Object?>? parent,
  ) {
    final controller =
        PagingController<DocumentSnapshot?, UsersRecord>(firstPageKey: null);
    return controller
      ..addPageRequestListener(
        (nextPageMarker) => queryUsersRecordPage(
          nextPageMarker: nextPageMarker,
          streamSubscriptions: listViewStreamSubscriptions1,
          controller: controller,
          pageSize: 15,
          isStream: true,
        ),
      );
  }

  PagingController<DocumentSnapshot?, UsersRecord> setListViewController2(
    Query query, {
    DocumentReference<Object?>? parent,
  }) {
    listViewPagingController2 ??= _createListViewController2(query, parent);
    if (listViewPagingQuery2 != query) {
      listViewPagingQuery2 = query;
      listViewPagingController2?.refresh();
    }
    return listViewPagingController2!;
  }

  PagingController<DocumentSnapshot?, UsersRecord> _createListViewController2(
    Query query,
    DocumentReference<Object?>? parent,
  ) {
    final controller =
        PagingController<DocumentSnapshot?, UsersRecord>(firstPageKey: null);
    return controller
      ..addPageRequestListener(
        (nextPageMarker) => queryUsersRecordPage(
          nextPageMarker: nextPageMarker,
          streamSubscriptions: listViewStreamSubscriptions2,
          controller: controller,
          pageSize: 15,
          isStream: true,
        ),
      );
  }
}
