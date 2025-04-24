import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/tutorialguiado/tutorial/tutorial_widget.dart';

// Focus widget keys for this walkthrough
final textZue5vun6 = GlobalKey();
final text54c6k8kc = GlobalKey();
final text4eda38vy = GlobalKey();
final text9gevx9gi = GlobalKey();

/// ttlLogSesiones
///
///
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// Step 1
      TargetFocus(
        keyTarget: textZue5vun6,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En esta página se muestra las sesiones de los usuarios',
            ),
          ),
        ],
      ),

      /// Step 2
      TargetFocus(
        keyTarget: text54c6k8kc,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial: 'En esta columna se muestra las lista de los usuarios',
            ),
          ),
        ],
      ),

      /// Step 3
      TargetFocus(
        keyTarget: text4eda38vy,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En esta página se muestra la lista de la fecha de incios de sesión',
            ),
          ),
        ],
      ),

      /// Step 4
      TargetFocus(
        keyTarget: text9gevx9gi,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En esta columna se muestra la lista de acciones del usuario',
            ),
          ),
        ],
      ),
    ];
