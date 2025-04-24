import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/tutorialguiado/tutorial/tutorial_widget.dart';

// Focus widget keys for this walkthrough
final text5e0h5gtk = GlobalKey();
final text8cl4d5mo = GlobalKey();
final text1pqkmspn = GlobalKey();
final text3ag6bhtd = GlobalKey();

/// ttlLogSesionesBU
///
///
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// Step 1
      TargetFocus(
        keyTarget: text5e0h5gtk,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En esta página se muestra la lista de los inicios de sesiones',
            ),
          ),
        ],
      ),

      /// Step 2
      TargetFocus(
        keyTarget: text8cl4d5mo,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial: 'En estea columna se muestra la lista de los nombres',
            ),
          ),
        ],
      ),

      /// Step 3
      TargetFocus(
        keyTarget: text1pqkmspn,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial: 'En estea columna se muestra la lista de los apelldios',
            ),
          ),
        ],
      ),

      /// Step 4
      TargetFocus(
        keyTarget: text3ag6bhtd,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial: 'En estea columna se muestra la lista de las fechas',
            ),
          ),
        ],
      ),
    ];
