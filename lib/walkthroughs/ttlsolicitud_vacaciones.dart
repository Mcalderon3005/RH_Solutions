import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/tutorialguiado/tutorial/tutorial_widget.dart';

// Focus widget keys for this walkthrough
final columnT4majr1k = GlobalKey();
final rowKy6twpwf = GlobalKey();
final rowRodkmi0a = GlobalKey();
final rowNbv2g2yf = GlobalKey();
final columnEdw22wpm = GlobalKey();
final button026k9rer = GlobalKey();
final button51yjr5lg = GlobalKey();

/// ttlsolicitudVacaciones
///
///
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// Step 1
      TargetFocus(
        keyTarget: columnT4majr1k,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En esta pantalla podra realizar sus solicitudes de vacaciones o dias libres',
            ),
          ),
        ],
      ),

      /// Step 2
      TargetFocus(
        keyTarget: rowKy6twpwf,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial: 'Seleccione el tipo de solicitud que desea hacer ',
            ),
          ),
        ],
      ),

      /// Step 3
      TargetFocus(
        keyTarget: rowRodkmi0a,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial: 'Seleccione una fecha de inicio',
            ),
          ),
        ],
      ),

      /// Step 4
      TargetFocus(
        keyTarget: rowNbv2g2yf,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial: 'Seleccione una fecha final',
            ),
          ),
        ],
      ),

      /// Step 5
      TargetFocus(
        keyTarget: columnEdw22wpm,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'Seleccione el recuadro, para dar una descripcion de su solicitud',
            ),
          ),
        ],
      ),

      /// Step 6
      TargetFocus(
        keyTarget: button026k9rer,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En caso de tener un comprobante agreguelo dando click en esta opcion',
            ),
          ),
        ],
      ),

      /// Step 7
      TargetFocus(
        keyTarget: button51yjr5lg,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => TutorialWidget(
              tutorial: 'Finalice su solicitud dando click en este boton',
            ),
          ),
        ],
      ),
    ];
