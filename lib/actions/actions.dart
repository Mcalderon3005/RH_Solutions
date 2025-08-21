import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'package:flutter/material.dart';

Future sesionOutTimer(BuildContext context) async {
  bool? timerSesion;
  Function() _navigate = () {};
  logFirebaseEvent('SesionOutTimer_custom_action');
  timerSesion = await actions.verificarSesionActiva(
    currentUserDocument!.tiempoSesion!,
    10,
  );
  if (timerSesion != true) {
    logFirebaseEvent('SesionOutTimer_alert_dialog');
    var confirmDialogResponse = await showDialog<bool>(
          context: context,
          builder: (alertDialogContext) {
            return AlertDialog(
              title: Text('!!Alerta!!'),
              content: Text('Se hagoto el tiempo de la sesion.'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(alertDialogContext, false),
                  child: Text('Cancel'),
                ),
                TextButton(
                  onPressed: () => Navigator.pop(alertDialogContext, true),
                  child: Text('Confirm'),
                ),
              ],
            );
          },
        ) ??
        false;
    logFirebaseEvent('SesionOutTimer_backend_call');

    await currentUserReference!.update(createUsersRecordData(
      isLoggedIn: false,
      idDispositivo: '',
      timerSesionEstado: true,
    ));
    logFirebaseEvent('SesionOutTimer_update_app_state');
    FFAppState().IdDispositivo = '';
    logFirebaseEvent('SesionOutTimer_auth');
    GoRouter.of(context).prepareAuthEvent();
    await authManager.signOut();
    GoRouter.of(context).clearRedirectLocation();

    _navigate = () =>
        context.goNamedAuth(PaginaPrincipalWidget.routeName, context.mounted);
  }

  _navigate();
}

Future checkUserLogin(BuildContext context) async {
  Function() _navigate = () {};
  if (valueOrDefault<bool>(currentUserDocument?.isLoggedIn, false) != true) {
    logFirebaseEvent('checkUserLogin_auth');
    GoRouter.of(context).prepareAuthEvent();
    await authManager.signOut();
    GoRouter.of(context).clearRedirectLocation();

    _navigate = () =>
        context.goNamedAuth(PaginaPrincipalWidget.routeName, context.mounted);
  }

  _navigate();
}
