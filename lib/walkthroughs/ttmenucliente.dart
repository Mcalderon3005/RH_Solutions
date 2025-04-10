import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/tutorialguiado/ttl_menucliente/ttl_menucliente_widget.dart';

// Focus widget keys for this walkthrough
final textQ735g8y4 = GlobalKey();
final rowPf8ha404 = GlobalKey();
final rowVyuhqas4 = GlobalKey();
final rowS45d9hjt = GlobalKey();
final row87n4utkg = GlobalKey();
final row8cwabkfz = GlobalKey();
final iconButtonL7r1riia = GlobalKey();

/// ttmenucliente
///
/// Explicacion opciones
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// Step 1
      TargetFocus(
        keyTarget: textQ735g8y4,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => TtlMenuclienteWidget(
              tTlMenuCliente:
                  'Bienvenido al menu, a continuacion se le presentaran 6 opciones',
            ),
          ),
        ],
      ),

      /// Step 2
      TargetFocus(
        keyTarget: rowPf8ha404,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => TtlMenuclienteWidget(
              tTlMenuCliente:
                  'Esta es la opcion de ver facturas , seleccione si desea ver facturas de pagos realizados a su persona',
            ),
          ),
        ],
      ),

      /// Step 3
      TargetFocus(
        keyTarget: rowVyuhqas4,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => TtlMenuclienteWidget(
              tTlMenuCliente:
                  'La seccion solicitudes seleccionela si desea realizar o ver alguna solicitud',
            ),
          ),
        ],
      ),

      /// Step 4
      TargetFocus(
        keyTarget: rowS45d9hjt,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => TtlMenuclienteWidget(
              tTlMenuCliente:
                  'La seccion Horario funciona para ver su horario asignado',
            ),
          ),
        ],
      ),

      /// Step 5
      TargetFocus(
        keyTarget: row87n4utkg,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => TtlMenuclienteWidget(
              tTlMenuCliente:
                  'La seccion actividades funciona para ver las actividades por parte de la empresa',
            ),
          ),
        ],
      ),

      /// Step 6
      TargetFocus(
        keyTarget: row8cwabkfz,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => TtlMenuclienteWidget(
              tTlMenuCliente:
                  'La seccion de perfil funciona para ver su informacion',
            ),
          ),
        ],
      ),

      /// Step 7
      TargetFocus(
        keyTarget: iconButtonL7r1riia,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => TtlMenuclienteWidget(
              tTlMenuCliente:
                  'Este boton funciona para cerrar la sesion actual',
            ),
          ),
        ],
      ),
    ];
