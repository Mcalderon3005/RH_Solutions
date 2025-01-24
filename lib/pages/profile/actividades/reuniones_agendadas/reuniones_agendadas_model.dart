import '/components/custom_appbar_widget.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/profile/componentes_generales/fast_access/fast_access_widget.dart';
import 'reuniones_agendadas_widget.dart' show ReunionesAgendadasWidget;
import 'package:flutter/material.dart';

class ReunionesAgendadasModel
    extends FlutterFlowModel<ReunionesAgendadasWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for customAppbar component.
  late CustomAppbarModel customAppbarModel;
  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay;
  // Model for fastAccess component.
  late FastAccessModel fastAccessModel;

  @override
  void initState(BuildContext context) {
    customAppbarModel = createModel(context, () => CustomAppbarModel());
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
    fastAccessModel = createModel(context, () => FastAccessModel());
  }

  @override
  void dispose() {
    customAppbarModel.dispose();
    fastAccessModel.dispose();
  }
}
