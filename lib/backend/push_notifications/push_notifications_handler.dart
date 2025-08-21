import 'dart:async';

import 'serialization_util.dart';
import '/backend/backend.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';


final _handledMessageIds = <String?>{};

class PushNotificationsHandler extends StatefulWidget {
  const PushNotificationsHandler({Key? key, required this.child})
      : super(key: key);

  final Widget child;

  @override
  _PushNotificationsHandlerState createState() =>
      _PushNotificationsHandlerState();
}

class _PushNotificationsHandlerState extends State<PushNotificationsHandler> {
  bool _loading = false;

  Future handleOpenedPushNotification() async {
    if (isWeb) {
      return;
    }

    final notification = await FirebaseMessaging.instance.getInitialMessage();
    if (notification != null) {
      await _handlePushNotification(notification);
    }
    FirebaseMessaging.onMessageOpenedApp.listen(_handlePushNotification);
  }

  Future _handlePushNotification(RemoteMessage message) async {
    if (_handledMessageIds.contains(message.messageId)) {
      return;
    }
    _handledMessageIds.add(message.messageId);

    safeSetState(() => _loading = true);
    try {
      final initialPageName = message.data['initialPageName'] as String;
      final initialParameterData = getInitialParameterData(message.data);
      final parametersBuilder = parametersBuilderMap[initialPageName];
      if (parametersBuilder != null) {
        final parameterData = await parametersBuilder(initialParameterData);
        if (mounted) {
          context.pushNamed(
            initialPageName,
            pathParameters: parameterData.pathParameters,
            extra: parameterData.extra,
          );
        } else {
          appNavigatorKey.currentContext?.pushNamed(
            initialPageName,
            pathParameters: parameterData.pathParameters,
            extra: parameterData.extra,
          );
        }
      }
    } catch (e) {
      print('Error: $e');
    } finally {
      safeSetState(() => _loading = false);
    }
  }

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      handleOpenedPushNotification();
    });
  }

  @override
  Widget build(BuildContext context) => _loading
      ? Container(
          color: Colors.transparent,
          child: Image.asset(
            'assets/images/imagen_2024-11-28_195022565.png',
            fit: BoxFit.contain,
          ),
        )
      : widget.child;
}

class ParameterData {
  const ParameterData(
      {this.requiredParams = const {}, this.allParams = const {}});
  final Map<String, String?> requiredParams;
  final Map<String, dynamic> allParams;

  Map<String, String> get pathParameters => Map.fromEntries(
        requiredParams.entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
  Map<String, dynamic> get extra => Map.fromEntries(
        allParams.entries.where((e) => e.value != null),
      );

  static Future<ParameterData> Function(Map<String, dynamic>) none() =>
      (data) async => ParameterData();
}

final parametersBuilderMap =
    <String, Future<ParameterData> Function(Map<String, dynamic>)>{
  'PaginaPrincipal': ParameterData.none(),
  'inicioSesion': ParameterData.none(),
  'Profile': ParameterData.none(),
  'AboutUs': ParameterData.none(),
  'menuUsuario': ParameterData.none(),
  'moduloVacaciones': ParameterData.none(),
  'RecuperarContrasena': ParameterData.none(),
  'indexEmpleado': ParameterData.none(),
  'HomeAdminPage': ParameterData.none(),
  'Crear_Empleado': ParameterData.none(),
  'Edit_Empleado': (data) async => ParameterData(
        allParams: {
          'nombre': getParameter<String>(data, 'nombre'),
          'apellido': getParameter<String>(data, 'apellido'),
          'email': getParameter<String>(data, 'email'),
          'salario': getParameter<double>(data, 'salario'),
          'estaActivo': getParameter<bool>(data, 'estaActivo'),
          'userRef': getParameter<DocumentReference>(data, 'userRef'),
          'img': getParameter<String>(data, 'img'),
          'cedula': getParameter<String>(data, 'cedula'),
          'numTel': getParameter<String>(data, 'numTel'),
          'fechaNacimiento': getParameter<DateTime>(data, 'fechaNacimiento'),
          'fechaContratacion':
              getParameter<DateTime>(data, 'fechaContratacion'),
          'role': getParameter<String>(data, 'role'),
        },
      ),
  'CrearActividad': ParameterData.none(),
  'Facturacion': ParameterData.none(),
  'solicitudVacaciones': ParameterData.none(),
  'solicitudesVacacionesDetalle': (data) async => ParameterData(
        allParams: {
          'nombre': getParameter<String>(data, 'nombre'),
          'email': getParameter<String>(data, 'email'),
          'userRef': getParameter<DocumentReference>(data, 'userRef'),
          'estadoAprobacion': getParameter<bool>(data, 'estadoAprobacion'),
          'estadoRevision': getParameter<bool>(data, 'estadoRevision'),
          'fechaCreacion': getParameter<DateTime>(data, 'fechaCreacion'),
          'fechaInicio': getParameter<DateTime>(data, 'fechaInicio'),
          'fechaFin': getParameter<DateTime>(data, 'fechaFin'),
          'tipoSolicitud': getParameter<String>(data, 'tipoSolicitud'),
          'comentarios': getParameter<String>(data, 'comentarios'),
        },
      ),
  'solicitudesIncapacidadesDetalle': (data) async => ParameterData(
        allParams: {
          'nombre': getParameter<String>(data, 'nombre'),
          'email': getParameter<String>(data, 'email'),
          'estadoRevision': getParameter<bool>(data, 'estadoRevision'),
          'fechaCreacion': getParameter<DateTime>(data, 'fechaCreacion'),
          'fechaInicio': getParameter<DateTime>(data, 'fechaInicio'),
          'fechaFin': getParameter<DateTime>(data, 'fechaFin'),
          'tipoSolicitud': getParameter<String>(data, 'tipoSolicitud'),
          'comentarios': getParameter<String>(data, 'comentarios'),
          'incapacidadImg': getParameter<String>(data, 'incapacidadImg'),
          'documentRef': getParameter<DocumentReference>(data, 'documentRef'),
        },
      ),
  'solicitudesHomeAdmin': ParameterData.none(),
  'editarActividad': (data) async => ParameterData(
        allParams: {
          'fechaReunion': getParameter<DateTime>(data, 'fechaReunion'),
          'enlaceReunion': getParameter<String>(data, 'enlaceReunion'),
          'asuntoReunion': getParameter<String>(data, 'asuntoReunion'),
          'descripcionReunion':
              getParameter<String>(data, 'descripcionReunion'),
          'reuRef': getParameter<DocumentReference>(data, 'reuRef'),
          'nombreCreador': getParameter<String>(data, 'nombreCreador'),
          'estadoActividad': getParameter<bool>(data, 'estadoActividad'),
        },
      ),
  'crearPago': ParameterData.none(),
  'actividadesHomeAdmin': ParameterData.none(),
  'indexIncapacidadAdmin': ParameterData.none(),
  'solicitudesVacacionesAdmin': ParameterData.none(),
  'logErroresSesion': ParameterData.none(),
  'reportesHomeAdmin': ParameterData.none(),
  'logSesiones': ParameterData.none(),
  'logUsuariosCreacion': ParameterData.none(),
  'logUsuariosActualizacion': ParameterData.none(),
  'IndexSolicitudes': ParameterData.none(),
  'indexIncapacidades': ParameterData.none(),
  'indexActividades': ParameterData.none(),
  'editarPago': (data) async => ParameterData(
        allParams: {
          'pago': getParameter<DocumentReference>(data, 'pago'),
        },
      ),
  'GestionHorarios': ParameterData.none(),
  'ResolucionProblemas': ParameterData.none(),
  'Horario': ParameterData.none(),
  'DefinirActividadAdmin': ParameterData.none(),
  'logHorariosErrores': ParameterData.none(),
  'editarPerfil': ParameterData.none(),
  'CambiarContrasena': ParameterData.none(),
  'reportaError': ParameterData.none(),
  'FacturacionEmpleado': ParameterData.none(),
  'solicitarCorreccion': (data) async => ParameterData(
        allParams: {
          'pago': getParameter<DocumentReference>(data, 'pago'),
        },
      ),
  'Solicitudes_Index': ParameterData.none(),
  'CalendarioActividades': ParameterData.none(),
  'corregirPago': (data) async => ParameterData(
        allParams: {
          'pago': getParameter<DocumentReference>(data, 'pago'),
        },
      ),
  'Solicitudes_IndexEmpleado': ParameterData.none(),
  'logCalendarioActividades': ParameterData.none(),
  'calendarioActividadesUsuario': ParameterData.none(),
  'vaciarRegistros': ParameterData.none(),
  'Acerca': ParameterData.none(),
  'EmpleadoVacacionesAdmin': ParameterData.none(),
  'informacionSesion': ParameterData.none(),
  'logReporteErrores': ParameterData.none(),
  'verReporteError': (data) async => ParameterData(
        allParams: {
          'usuarioCreador': getParameter<String>(data, 'usuarioCreador'),
          'usuarioAsignado': getParameter<String>(data, 'usuarioAsignado'),
          'fechaCreacion': getParameter<DateTime>(data, 'fechaCreacion'),
          'fechaCompletado': getParameter<DateTime>(data, 'fechaCompletado'),
          'ttitulo': getParameter<String>(data, 'ttitulo'),
          'descripcionError': getParameter<String>(data, 'descripcionError'),
          'estaActivo': getParameter<bool>(data, 'estaActivo'),
          'codigo': getParameter<String>(data, 'codigo'),
          'reporteRef': getParameter<DocumentReference>(data, 'reporteRef'),
        },
      ),
  'horariosAdminSeleccion': ParameterData.none(),
};

Map<String, dynamic> getInitialParameterData(Map<String, dynamic> data) {
  try {
    final parameterDataStr = data['parameterData'];
    if (parameterDataStr == null ||
        parameterDataStr is! String ||
        parameterDataStr.isEmpty) {
      return {};
    }
    return jsonDecode(parameterDataStr) as Map<String, dynamic>;
  } catch (e) {
    print('Error parsing parameter data: $e');
    return {};
  }
}
