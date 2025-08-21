import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/tutorialguiado/tutorial/tutorial_widget.dart';

// Focus widget keys for this walkthrough
final textPl7er32l = GlobalKey();
final textField1uw3ssg5 = GlobalKey();
final rowBki7g8z9 = GlobalKey();
final rowOlhbejt7 = GlobalKey();
final buttonIngtq4qi = GlobalKey();

/// ResolucionProblemas
///
///
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// Step 1
      TargetFocus(
        keyTarget: textPl7er32l,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En esta sección puedes realizar reportes sobre errores con los horarios laborales',
            ),
          ),
        ],
      ),

      /// Step 2
      TargetFocus(
        keyTarget: textField1uw3ssg5,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En esta sección describes el o los errores ocurridos respecto al horario laboral',
            ),
          ),
        ],
      ),

      /// Step 3
      TargetFocus(
        keyTarget: rowBki7g8z9,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial: 'Se visualiza el colaborador que realiza el reporte',
            ),
          ),
        ],
      ),

      /// Step 4
      TargetFocus(
        keyTarget: rowOlhbejt7,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial: 'Se visualiza la fecha en la que se realiza el reporte',
            ),
          ),
        ],
      ),

      /// Step 5
      TargetFocus(
        keyTarget: buttonIngtq4qi,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'Una vez que se describe el error con el horario se da click en el botón para enviarlo',
            ),
          ),
        ],
      ),
    ];
