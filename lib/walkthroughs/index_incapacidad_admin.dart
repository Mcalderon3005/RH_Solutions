import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/tutorialguiado/tutorial/tutorial_widget.dart';

// Focus widget keys for this walkthrough
final textKj6ra3ib = GlobalKey();
final textAlpif9ei = GlobalKey();
final textVkoe3h2y = GlobalKey();
final text7vc3g3jc = GlobalKey();
final textNhx7nu1y = GlobalKey();
final iconButtonS4uny9gp = GlobalKey();

/// indexIncapacidadAdmin
///
///
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// Step 1
      TargetFocus(
        keyTarget: textKj6ra3ib,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En esta sección se visulizan las incapacidades de los colaboradores',
            ),
          ),
        ],
      ),

      /// Step 2
      TargetFocus(
        keyTarget: textAlpif9ei,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En esta columna se visulizan los colaboradores incapacitados',
            ),
          ),
        ],
      ),

      /// Step 3
      TargetFocus(
        keyTarget: textVkoe3h2y,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En esta columna se visulizan las fechas de inicio de las incapacidades',
            ),
          ),
        ],
      ),

      /// Step 4
      TargetFocus(
        keyTarget: text7vc3g3jc,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En esta columna se visulizan las fechas del fin de las incapacidades',
            ),
          ),
        ],
      ),

      /// Step 5
      TargetFocus(
        keyTarget: textNhx7nu1y,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En esta columna se visulizan los estados de las incapacidades en revisión o revisado',
            ),
          ),
        ],
      ),

      /// Step 6
      TargetFocus(
        keyTarget: iconButtonS4uny9gp,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'Al dar click en este botón dirige a las incapacidades en detalle asi como darle un estado de revisado',
            ),
          ),
        ],
      ),
    ];
