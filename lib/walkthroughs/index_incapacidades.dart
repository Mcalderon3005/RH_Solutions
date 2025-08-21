import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/tutorialguiado/tutorial/tutorial_widget.dart';

// Focus widget keys for this walkthrough
final textId5c81ry = GlobalKey();
final textOeoinc7b = GlobalKey();
final textHpi9qmax = GlobalKey();
final text21j5kh23 = GlobalKey();
final textJh4gt7g7 = GlobalKey();

/// indexIncapacidades
///
///
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// Step 1
      TargetFocus(
        keyTarget: textId5c81ry,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En esta sección se ven las incapacidades de los empleados',
            ),
          ),
        ],
      ),

      /// Step 2
      TargetFocus(
        keyTarget: textOeoinc7b,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En esta columna se ven la fecha en la que se envio la incapacidad',
            ),
          ),
        ],
      ),

      /// Step 3
      TargetFocus(
        keyTarget: textHpi9qmax,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En esta columna se ve la fecha en que inician las incapacidades',
            ),
          ),
        ],
      ),

      /// Step 4
      TargetFocus(
        keyTarget: text21j5kh23,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En esta columna se ve la fecha en que finalizan las incapacidades',
            ),
          ),
        ],
      ),

      /// Step 5
      TargetFocus(
        keyTarget: textJh4gt7g7,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial: 'En esta columna se ve el estado de las incapacidades',
            ),
          ),
        ],
      ),
    ];
