import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/tutorialguiado/tutorial/tutorial_widget.dart';

// Focus widget keys for this walkthrough
final textJw5mflz0 = GlobalKey();
final textYjxvy147 = GlobalKey();
final text0fzd2ona = GlobalKey();
final text379c6j7t = GlobalKey();
final textPg8du8qv = GlobalKey();
final textN3vye374 = GlobalKey();

/// IndexSolicitudes
///
///
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// Step 1
      TargetFocus(
        keyTarget: textJw5mflz0,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En esta sección se ven las solicitudes de las vacaciones',
            ),
          ),
        ],
      ),

      /// Step 2
      TargetFocus(
        keyTarget: textYjxvy147,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En esta columna se ven las fechas de las solicitud de vacaciones',
            ),
          ),
        ],
      ),

      /// Step 3
      TargetFocus(
        keyTarget: text0fzd2ona,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En esta columna se ven las fechas en las que inician las vacaciones',
            ),
          ),
        ],
      ),

      /// Step 4
      TargetFocus(
        keyTarget: text379c6j7t,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En esta columna se ven las fechas en las que finalizan las vacaciones',
            ),
          ),
        ],
      ),

      /// Step 5
      TargetFocus(
        keyTarget: textPg8du8qv,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En esta columna se ven el estado de la solicitud si esta en revisión o revisado',
            ),
          ),
        ],
      ),

      /// Step 6
      TargetFocus(
        keyTarget: textN3vye374,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En esta columna se ven los estados de las vaciones si fueron apobadas o denegadas',
            ),
          ),
        ],
      ),
    ];
