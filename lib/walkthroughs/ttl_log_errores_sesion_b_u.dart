import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/tutorialguiado/tutorial/tutorial_widget.dart';

// Focus widget keys for this walkthrough
final textNnp0nq3o = GlobalKey();
final textY0pp33ue = GlobalKey();
final textZq5ew08y = GlobalKey();
final textTtsh7sp0 = GlobalKey();

/// ttlLogErroresSesionBU
///
///
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// Step 1
      TargetFocus(
        keyTarget: textNnp0nq3o,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial: 'Este página muestra los errores de inicio de sesión',
            ),
          ),
        ],
      ),

      /// Step 2
      TargetFocus(
        keyTarget: textY0pp33ue,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial: 'Esta columna muestra el nombre de los usuarios',
            ),
          ),
        ],
      ),

      /// Step 3
      TargetFocus(
        keyTarget: textZq5ew08y,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial: 'Esta columna muestra el apellido de los usuarios',
            ),
          ),
        ],
      ),

      /// Step 4
      TargetFocus(
        keyTarget: textTtsh7sp0,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial: 'Esta columna muestra la cedula de los usuarios',
            ),
          ),
        ],
      ),
    ];
