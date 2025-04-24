import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/tutorialguiado/tutorial/tutorial_widget.dart';

// Focus widget keys for this walkthrough
final textNcoe5078 = GlobalKey();
final textOcujz7yy = GlobalKey();
final text6zwql1c7 = GlobalKey();
final textZ8bs1i6n = GlobalKey();

/// ttlLogHorariosErrores
///
///
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// Step 1
      TargetFocus(
        keyTarget: textNcoe5078,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial: 'En esta página muestra los errores de horarios',
            ),
          ),
        ],
      ),

      /// Step 2
      TargetFocus(
        keyTarget: textOcujz7yy,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial: 'En esta columna muestra la lista de usuarios ',
            ),
          ),
        ],
      ),

      /// Step 3
      TargetFocus(
        keyTarget: text6zwql1c7,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En esta columna muestra la lista de la fecha del reporte',
            ),
          ),
        ],
      ),

      /// Step 4
      TargetFocus(
        keyTarget: textZ8bs1i6n,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial: 'En esta columna muestra la lista del dia del error',
            ),
          ),
        ],
      ),
    ];
