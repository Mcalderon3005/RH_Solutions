import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/tutorialguiado/tutorial/tutorial_widget.dart';

// Focus widget keys for this walkthrough
final text3qi2ybw3 = GlobalKey();
final textQy6fxc6d = GlobalKey();
final text5zj7qer0 = GlobalKey();
final textEhwby9j9 = GlobalKey();
final textXytv2n1u = GlobalKey();
final textDkn0ipgv = GlobalKey();
final iconButtonFnnauoym = GlobalKey();

/// solicitudesVacacionesAdmin
///
///
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// Step 1
      TargetFocus(
        keyTarget: text3qi2ybw3,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En esta sección se visualizan las solcitudes de vacaciones de los colaboradores',
            ),
          ),
        ],
      ),

      /// Step 2
      TargetFocus(
        keyTarget: textQy6fxc6d,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En esta columna se visualizan loss colaboradores que solicitaron vacaciones',
            ),
          ),
        ],
      ),

      /// Step 3
      TargetFocus(
        keyTarget: text5zj7qer0,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En esta columna se visualizan las fechas del inicio de las vacaciones',
            ),
          ),
        ],
      ),

      /// Step 4
      TargetFocus(
        keyTarget: textEhwby9j9,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En esta columna se visualizan las fechas del final de las vacaciones',
            ),
          ),
        ],
      ),

      /// Step 5
      TargetFocus(
        keyTarget: textXytv2n1u,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En esta columna se vusliza el estado de las solicitudes esta en revisión o revisado',
            ),
          ),
        ],
      ),

      /// Step 6
      TargetFocus(
        keyTarget: textDkn0ipgv,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En esta columna se visualiza si esta aprobado o denegado',
            ),
          ),
        ],
      ),

      /// Step 7
      TargetFocus(
        keyTarget: iconButtonFnnauoym,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'Al dar click en este botón dirige a la solicitud en detalle asi como aporbarla o degenar la solicitud',
            ),
          ),
        ],
      ),
    ];
