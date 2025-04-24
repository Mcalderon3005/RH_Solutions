import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/tutorialguiado/tutorial/tutorial_widget.dart';

// Focus widget keys for this walkthrough
final textWagy99s8 = GlobalKey();
final containerYt8p5s66 = GlobalKey();
final containerQ8gr1njp = GlobalKey();

/// ttlActividadesHomeAdmin
///
///
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// Step 1
      TargetFocus(
        keyTarget: textWagy99s8,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial: 'En esta página se muestra un menú de actividades',
            ),
          ),
        ],
      ),

      /// Step 2
      TargetFocus(
        keyTarget: containerYt8p5s66,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial: 'En este botón lleva crear una actividad',
            ),
          ),
        ],
      ),

      /// Step 3
      TargetFocus(
        keyTarget: containerQ8gr1njp,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial: 'Este botón muestra las actividades disponibles',
            ),
          ),
        ],
      ),
    ];
