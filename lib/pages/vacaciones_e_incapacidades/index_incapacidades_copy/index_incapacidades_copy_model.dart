import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'index_incapacidades_copy_widget.dart' show IndexIncapacidadesCopyWidget;
import 'package:flutter/material.dart';

class IndexIncapacidadesCopyModel
    extends FlutterFlowModel<IndexIncapacidadesCopyWidget> {
  ///  Local state fields for this page.

  List<IncapacidadesRecord> incapacidadesListU = [];
  void addToIncapacidadesListU(IncapacidadesRecord item) =>
      incapacidadesListU.add(item);
  void removeFromIncapacidadesListU(IncapacidadesRecord item) =>
      incapacidadesListU.remove(item);
  void removeAtIndexFromIncapacidadesListU(int index) =>
      incapacidadesListU.removeAt(index);
  void insertAtIndexInIncapacidadesListU(int index, IncapacidadesRecord item) =>
      incapacidadesListU.insert(index, item);
  void updateIncapacidadesListUAtIndex(
          int index, Function(IncapacidadesRecord) updateFn) =>
      incapacidadesListU[index] = updateFn(incapacidadesListU[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in indexIncapacidadesCopy widget.
  List<IncapacidadesRecord>? incapacidadesList;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
