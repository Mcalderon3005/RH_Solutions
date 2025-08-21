import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/tutorialguiado/tutorial/tutorial_widget.dart';

// Focus widget keys for this walkthrough
final textJ82elsg3 = GlobalKey();
final text2hz80b8f = GlobalKey();
final textRxpebxbg = GlobalKey();
final textZ7cvnwca = GlobalKey();

/// Horario
///
///
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// Step 1
      TargetFocus(
        keyTarget: textJ82elsg3,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial: 'En esta sección se visualizan las horas laboradas ',
            ),
          ),
        ],
      ),

      /// Step 2
      TargetFocus(
        keyTarget: text2hz80b8f,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En esta columna se visulizan el inicio de la jornada laboral',
            ),
          ),
        ],
      ),

      /// Step 3
      TargetFocus(
        keyTarget: textRxpebxbg,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En esta columna se visulizan el final de la jornada laboral',
            ),
          ),
        ],
      ),

      /// Step 4
      TargetFocus(
        keyTarget: textZ7cvnwca,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial: 'En esta columna se visulizan el usuario que laboro',
            ),
          ),
        ],
      ),
    ];
