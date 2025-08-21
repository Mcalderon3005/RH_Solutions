import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/tutorialguiado/tutorial/tutorial_widget.dart';

// Focus widget keys for this walkthrough
final textUnp1djn7 = GlobalKey();
final calendarIyh2tff2 = GlobalKey();
final listTileVbjylcrf = GlobalKey();
final buttonK4w43lsu = GlobalKey();

/// CalendarioActividades
///
///
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// Step 1
      TargetFocus(
        keyTarget: textUnp1djn7,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En esta sección se visualizan las actividades de la compañia',
            ),
          ),
        ],
      ),

      /// Step 2
      TargetFocus(
        keyTarget: calendarIyh2tff2,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'Este calendario se visualizan las actividades por fechas',
            ),
          ),
        ],
      ),

      /// Step 3
      TargetFocus(
        keyTarget: listTileVbjylcrf,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial: 'Se desplega la lista de las reuniones de la compañia',
            ),
          ),
        ],
      ),

      /// Step 4
      TargetFocus(
        keyTarget: buttonK4w43lsu,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial: 'Este botón te dirige a crear una reunión ',
            ),
          ),
        ],
      ),
    ];
