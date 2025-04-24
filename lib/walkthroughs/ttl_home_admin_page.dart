import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/tutorialguiado/tutorial/tutorial_widget.dart';

// Focus widget keys for this walkthrough
final containerNjrl8v50 = GlobalKey();
final containerQ4t51clc = GlobalKey();
final containerGm6kh03i = GlobalKey();
final containerFpd31nry = GlobalKey();
final container0rx721nj = GlobalKey();
final container4ovpwrd1 = GlobalKey();
final container4ba1k1ep = GlobalKey();
final containerD23wywe6 = GlobalKey();
final containerP45dqaxu = GlobalKey();

/// ttlHomeAdminPage
///
///
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// Step 1
      TargetFocus(
        keyTarget: containerNjrl8v50,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En el siguiente panel de control se presentaran diversas opciones a las que tiene acceso',
            ),
          ),
        ],
      ),

      /// Step 2
      TargetFocus(
        keyTarget: containerQ4t51clc,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'La siguiente opcion le permitira generar nuevas actividades',
            ),
          ),
        ],
      ),

      /// Step 3
      TargetFocus(
        keyTarget: containerGm6kh03i,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'Esta seccion funciona para gestionar las facturas y mantener un orden en esta respecto a pagos realizados',
            ),
          ),
        ],
      ),

      /// Step 4
      TargetFocus(
        keyTarget: containerFpd31nry,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'Esta seccion funciona para administrar las solicitudes de vacaiones, dias libres y incapacidades',
            ),
          ),
        ],
      ),

      /// Step 5
      TargetFocus(
        keyTarget: container0rx721nj,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => TutorialWidget(
              tutorial: 'Esta seccion funciona para la gestion de usuarios',
            ),
          ),
        ],
      ),

      /// Step 6
      TargetFocus(
        keyTarget: container4ovpwrd1,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'Esta seccion almacena los reportes generados por el uso del programa',
            ),
          ),
        ],
      ),

      /// Step 7
      TargetFocus(
        keyTarget: container4ba1k1ep,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En esta seccion se ve una vista en general a las actividades  ya agendadas en la empresa ',
            ),
          ),
        ],
      ),

      /// Step 8
      TargetFocus(
        keyTarget: containerD23wywe6,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => TutorialWidget(
              tutorial: 'Muestra informacion en general de la sesion actual ',
            ),
          ),
        ],
      ),

      /// Step 9
      TargetFocus(
        keyTarget: containerP45dqaxu,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => TutorialWidget(
              tutorial: 'Si desea cerrar sesion seleccione esta opcion',
            ),
          ),
        ],
      ),
    ];
