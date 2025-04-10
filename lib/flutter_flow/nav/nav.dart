import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';

import '/auth/base_auth_user_provider.dart';

import '/backend/push_notifications/push_notifications_handler.dart'
    show PushNotificationsHandler;
import '/flutter_flow/flutter_flow_util.dart';

import '/index.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

GlobalKey<NavigatorState> appNavigatorKey = GlobalKey<NavigatorState>();

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier, [Widget? entryPage]) =>
    GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      navigatorKey: appNavigatorKey,
      errorBuilder: (context, state) => appStateNotifier.loggedIn
          ? entryPage ?? InicioSesionWidget()
          : PaginaPrincipalWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => appStateNotifier.loggedIn
              ? entryPage ?? InicioSesionWidget()
              : PaginaPrincipalWidget(),
          routes: [
            FFRoute(
              name: PaginaPrincipalWidget.routeName,
              path: PaginaPrincipalWidget.routePath,
              builder: (context, params) => PaginaPrincipalWidget(),
            ),
            FFRoute(
              name: InicioSesionWidget.routeName,
              path: InicioSesionWidget.routePath,
              builder: (context, params) => InicioSesionWidget(),
            ),
            FFRoute(
              name: ProfileWidget.routeName,
              path: ProfileWidget.routePath,
              requireAuth: true,
              builder: (context, params) => ProfileWidget(),
            ),
            FFRoute(
              name: AboutUsWidget.routeName,
              path: AboutUsWidget.routePath,
              requireAuth: true,
              builder: (context, params) => AboutUsWidget(),
            ),
            FFRoute(
              name: MenuUsuarioWidget.routeName,
              path: MenuUsuarioWidget.routePath,
              requireAuth: true,
              builder: (context, params) => MenuUsuarioWidget(),
            ),
            FFRoute(
              name: ModuloVacacionesWidget.routeName,
              path: ModuloVacacionesWidget.routePath,
              requireAuth: true,
              builder: (context, params) => ModuloVacacionesWidget(),
            ),
            FFRoute(
              name: RecuperarContrasenaWidget.routeName,
              path: RecuperarContrasenaWidget.routePath,
              builder: (context, params) => RecuperarContrasenaWidget(),
            ),
            FFRoute(
              name: IndexEmpleadoWidget.routeName,
              path: IndexEmpleadoWidget.routePath,
              builder: (context, params) => IndexEmpleadoWidget(),
            ),
            FFRoute(
              name: HomeAdminPageWidget.routeName,
              path: HomeAdminPageWidget.routePath,
              builder: (context, params) => HomeAdminPageWidget(),
            ),
            FFRoute(
              name: CrearEmpleadoWidget.routeName,
              path: CrearEmpleadoWidget.routePath,
              builder: (context, params) => CrearEmpleadoWidget(),
            ),
            FFRoute(
              name: VerActividadesWidget.routeName,
              path: VerActividadesWidget.routePath,
              requireAuth: true,
              builder: (context, params) => VerActividadesWidget(),
            ),
            FFRoute(
              name: EditEmpleadoWidget.routeName,
              path: EditEmpleadoWidget.routePath,
              builder: (context, params) => EditEmpleadoWidget(
                nombre: params.getParam(
                  'nombre',
                  ParamType.String,
                ),
                apellido: params.getParam(
                  'apellido',
                  ParamType.String,
                ),
                email: params.getParam(
                  'email',
                  ParamType.String,
                ),
                salario: params.getParam(
                  'salario',
                  ParamType.double,
                ),
                estaActivo: params.getParam(
                  'estaActivo',
                  ParamType.bool,
                ),
                userRef: params.getParam(
                  'userRef',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['users'],
                ),
                img: params.getParam(
                  'img',
                  ParamType.String,
                ),
                cedula: params.getParam(
                  'cedula',
                  ParamType.String,
                ),
                numTel: params.getParam(
                  'numTel',
                  ParamType.String,
                ),
                fechaNacimiento: params.getParam(
                  'fechaNacimiento',
                  ParamType.DateTime,
                ),
                fechaContratacion: params.getParam(
                  'fechaContratacion',
                  ParamType.DateTime,
                ),
                role: params.getParam(
                  'role',
                  ParamType.String,
                ),
              ),
            ),
            FFRoute(
              name: DefinirActividadBUWidget.routeName,
              path: DefinirActividadBUWidget.routePath,
              builder: (context, params) => DefinirActividadBUWidget(),
            ),
            FFRoute(
              name: CrearActividadWidget.routeName,
              path: CrearActividadWidget.routePath,
              builder: (context, params) => CrearActividadWidget(),
            ),
            FFRoute(
              name: SolicitudesVacacionesAdminBUWidget.routeName,
              path: SolicitudesVacacionesAdminBUWidget.routePath,
              builder: (context, params) =>
                  SolicitudesVacacionesAdminBUWidget(),
            ),
            FFRoute(
              name: FacturacionWidget.routeName,
              path: FacturacionWidget.routePath,
              builder: (context, params) => FacturacionWidget(),
            ),
            FFRoute(
              name: LogSesionesBUWidget.routeName,
              path: LogSesionesBUWidget.routePath,
              builder: (context, params) => LogSesionesBUWidget(),
            ),
            FFRoute(
              name: LogErroresSesionBUWidget.routeName,
              path: LogErroresSesionBUWidget.routePath,
              builder: (context, params) => LogErroresSesionBUWidget(),
            ),
            FFRoute(
              name: SolicitudessWidget.routeName,
              path: SolicitudessWidget.routePath,
              builder: (context, params) => SolicitudessWidget(),
            ),
            FFRoute(
              name: SolicitudVacacionesWidget.routeName,
              path: SolicitudVacacionesWidget.routePath,
              requireAuth: true,
              builder: (context, params) => SolicitudVacacionesWidget(),
            ),
            FFRoute(
              name: IndexSolicitudesBUWidget.routeName,
              path: IndexSolicitudesBUWidget.routePath,
              requireAuth: true,
              builder: (context, params) => IndexSolicitudesBUWidget(),
            ),
            FFRoute(
              name: IndexIncapacidadesAdminBUWidget.routeName,
              path: IndexIncapacidadesAdminBUWidget.routePath,
              builder: (context, params) => IndexIncapacidadesAdminBUWidget(),
            ),
            FFRoute(
              name: IndexIncapacidadesBUWidget.routeName,
              path: IndexIncapacidadesBUWidget.routePath,
              requireAuth: true,
              builder: (context, params) => IndexIncapacidadesBUWidget(),
            ),
            FFRoute(
              name: SolicitudesVacacionesDetalleWidget.routeName,
              path: SolicitudesVacacionesDetalleWidget.routePath,
              builder: (context, params) => SolicitudesVacacionesDetalleWidget(
                nombre: params.getParam(
                  'nombre',
                  ParamType.String,
                ),
                email: params.getParam(
                  'email',
                  ParamType.String,
                ),
                userRef: params.getParam(
                  'userRef',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['solicitud_vacaciones'],
                ),
                estadoAprobacion: params.getParam(
                  'estadoAprobacion',
                  ParamType.bool,
                ),
                estadoRevision: params.getParam(
                  'estadoRevision',
                  ParamType.bool,
                ),
                fechaCreacion: params.getParam(
                  'fechaCreacion',
                  ParamType.DateTime,
                ),
                fechaInicio: params.getParam(
                  'fechaInicio',
                  ParamType.DateTime,
                ),
                fechaFin: params.getParam(
                  'fechaFin',
                  ParamType.DateTime,
                ),
                tipoSolicitud: params.getParam(
                  'tipoSolicitud',
                  ParamType.String,
                ),
                comentarios: params.getParam(
                  'comentarios',
                  ParamType.String,
                ),
              ),
            ),
            FFRoute(
              name: SolicitudesIncapacidadesDetalleWidget.routeName,
              path: SolicitudesIncapacidadesDetalleWidget.routePath,
              builder: (context, params) =>
                  SolicitudesIncapacidadesDetalleWidget(
                nombre: params.getParam(
                  'nombre',
                  ParamType.String,
                ),
                email: params.getParam(
                  'email',
                  ParamType.String,
                ),
                estadoRevision: params.getParam(
                  'estadoRevision',
                  ParamType.bool,
                ),
                fechaCreacion: params.getParam(
                  'fechaCreacion',
                  ParamType.DateTime,
                ),
                fechaInicio: params.getParam(
                  'fechaInicio',
                  ParamType.DateTime,
                ),
                fechaFin: params.getParam(
                  'fechaFin',
                  ParamType.DateTime,
                ),
                tipoSolicitud: params.getParam(
                  'tipoSolicitud',
                  ParamType.String,
                ),
                comentarios: params.getParam(
                  'comentarios',
                  ParamType.String,
                ),
                incapacidadImg: params.getParam(
                  'incapacidadImg',
                  ParamType.String,
                ),
                documentRef: params.getParam(
                  'documentRef',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['Incapacidades'],
                ),
              ),
            ),
            FFRoute(
              name: SolicitudesHomeAdminWidget.routeName,
              path: SolicitudesHomeAdminWidget.routePath,
              builder: (context, params) => SolicitudesHomeAdminWidget(),
            ),
            FFRoute(
              name: EditarActividadWidget.routeName,
              path: EditarActividadWidget.routePath,
              requireAuth: true,
              builder: (context, params) => EditarActividadWidget(
                fechaReunion: params.getParam(
                  'fechaReunion',
                  ParamType.DateTime,
                ),
                enlaceReunion: params.getParam(
                  'enlaceReunion',
                  ParamType.String,
                ),
                asuntoReunion: params.getParam(
                  'asuntoReunion',
                  ParamType.String,
                ),
                descripcionReunion: params.getParam(
                  'descripcionReunion',
                  ParamType.String,
                ),
                asistentesReunion: params.getParam<String>(
                  'asistentesReunion',
                  ParamType.String,
                  isList: true,
                ),
                reuRef: params.getParam(
                  'reuRef',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['Reuniones'],
                ),
                nombreCreador: params.getParam(
                  'nombreCreador',
                  ParamType.String,
                ),
                estadoActividad: params.getParam(
                  'estadoActividad',
                  ParamType.bool,
                ),
              ),
            ),
            FFRoute(
              name: CrearPagoWidget.routeName,
              path: CrearPagoWidget.routePath,
              builder: (context, params) => CrearPagoWidget(),
            ),
            FFRoute(
              name: ActividadesHomeAdminWidget.routeName,
              path: ActividadesHomeAdminWidget.routePath,
              builder: (context, params) => ActividadesHomeAdminWidget(),
            ),
            FFRoute(
              name: IndexIncapacidadAdminWidget.routeName,
              path: IndexIncapacidadAdminWidget.routePath,
              builder: (context, params) => IndexIncapacidadAdminWidget(),
            ),
            FFRoute(
              name: SolicitudesVacacionesAdminWidget.routeName,
              path: SolicitudesVacacionesAdminWidget.routePath,
              builder: (context, params) => SolicitudesVacacionesAdminWidget(),
            ),
            FFRoute(
              name: LogErroresSesionWidget.routeName,
              path: LogErroresSesionWidget.routePath,
              requireAuth: true,
              builder: (context, params) => LogErroresSesionWidget(),
            ),
            FFRoute(
              name: ReportesHomeAdminWidget.routeName,
              path: ReportesHomeAdminWidget.routePath,
              builder: (context, params) => ReportesHomeAdminWidget(),
            ),
            FFRoute(
              name: LogSesionesWidget.routeName,
              path: LogSesionesWidget.routePath,
              requireAuth: true,
              builder: (context, params) => LogSesionesWidget(),
            ),
            FFRoute(
              name: LogUsuariosCreacionWidget.routeName,
              path: LogUsuariosCreacionWidget.routePath,
              builder: (context, params) => LogUsuariosCreacionWidget(),
            ),
            FFRoute(
              name: LogUsuariosActualizacionWidget.routeName,
              path: LogUsuariosActualizacionWidget.routePath,
              requireAuth: true,
              builder: (context, params) => LogUsuariosActualizacionWidget(),
            ),
            FFRoute(
              name: IndexSolicitudesWidget.routeName,
              path: IndexSolicitudesWidget.routePath,
              requireAuth: true,
              builder: (context, params) => IndexSolicitudesWidget(),
            ),
            FFRoute(
              name: IndexIncapacidadesWidget.routeName,
              path: IndexIncapacidadesWidget.routePath,
              requireAuth: true,
              builder: (context, params) => IndexIncapacidadesWidget(),
            ),
            FFRoute(
              name: IndexActividadesWidget.routeName,
              path: IndexActividadesWidget.routePath,
              requireAuth: true,
              builder: (context, params) => IndexActividadesWidget(),
            ),
            FFRoute(
              name: EditarPagoWidget.routeName,
              path: EditarPagoWidget.routePath,
              builder: (context, params) => EditarPagoWidget(
                pago: params.getParam(
                  'pago',
                  ParamType.DocumentReference,
                  isList: false,
                  collectionNamePath: ['Pagos'],
                ),
              ),
            ),
            FFRoute(
              name: GestionHorariosWidget.routeName,
              path: GestionHorariosWidget.routePath,
              requireAuth: true,
              builder: (context, params) => GestionHorariosWidget(),
            ),
            FFRoute(
              name: ResolucionProblemasWidget.routeName,
              path: ResolucionProblemasWidget.routePath,
              requireAuth: true,
              builder: (context, params) => ResolucionProblemasWidget(),
            ),
            FFRoute(
              name: HorarioWidget.routeName,
              path: HorarioWidget.routePath,
              requireAuth: true,
              builder: (context, params) => HorarioWidget(),
            ),
            FFRoute(
              name: DefinirActividadAdminWidget.routeName,
              path: DefinirActividadAdminWidget.routePath,
              requireAuth: true,
              builder: (context, params) => DefinirActividadAdminWidget(),
            ),
            FFRoute(
              name: LogHorariosErroresWidget.routeName,
              path: LogHorariosErroresWidget.routePath,
              requireAuth: true,
              builder: (context, params) => LogHorariosErroresWidget(),
            ),
            FFRoute(
              name: EditarPerfilWidget.routeName,
              path: EditarPerfilWidget.routePath,
              requireAuth: true,
              builder: (context, params) => EditarPerfilWidget(),
            ),
            FFRoute(
              name: CambiarContrasenaWidget.routeName,
              path: CambiarContrasenaWidget.routePath,
              requireAuth: true,
              builder: (context, params) => CambiarContrasenaWidget(),
            )
          ].map((r) => r.toRoute(appStateNotifier)).toList(),
        ),
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    List<String>? collectionNamePath,
    StructBuilder<T>? structBuilder,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      collectionNamePath: collectionNamePath,
      structBuilder: structBuilder,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/paginaPrincipal';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Container(
                  color: Colors.transparent,
                  child: Image.asset(
                    'assets/images/imagen_2024-11-28_195022565.png',
                    fit: BoxFit.contain,
                  ),
                )
              : PushNotificationsHandler(child: page);

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
