import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/tutorialguiado/tutorial/tutorial_widget.dart';

// Focus widget keys for this walkthrough
final text438dznuh = GlobalKey();
final textField14jeoerw = GlobalKey();
final button5e4b7qov = GlobalKey();
final iconButtonJgv46yge = GlobalKey();
final textMlvip6zn = GlobalKey();
final textRy3bl437 = GlobalKey();
final text1lzby44m = GlobalKey();
final textM662d2oj = GlobalKey();

/// DefinirActividadAdmin
///
///
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// Step 1
      TargetFocus(
        keyTarget: text438dznuh,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En esta sección se visualizan las actividades agendadas',
            ),
          ),
        ],
      ),

      /// Step 2
      TargetFocus(
        keyTarget: textField14jeoerw,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'Para buscar una reunión especifica, se escribe el nombre del organizador',
            ),
          ),
        ],
      ),

      /// Step 3
      TargetFocus(
        keyTarget: button5e4b7qov,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'Una vez que se escribe le nombre del organizador se da click en este botón y se despliega las actividades',
            ),
          ),
        ],
      ),

      /// Step 4
      TargetFocus(
        keyTarget: iconButtonJgv46yge,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'Si necesitas crear una reunión nueva das click en este botón',
            ),
          ),
        ],
      ),

      /// Step 5
      TargetFocus(
        keyTarget: textMlvip6zn,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En esta columna se visualizan los organizadores de las actividades',
            ),
          ),
        ],
      ),

      /// Step 6
      TargetFocus(
        keyTarget: textRy3bl437,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En esta columna se visualizan las fechas de las actividades',
            ),
          ),
        ],
      ),

      /// Step 7
      TargetFocus(
        keyTarget: text1lzby44m,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En esta colimna se visualiza la fecha en que se organizo la actividad',
            ),
          ),
        ],
      ),

      /// Step 8
      TargetFocus(
        keyTarget: textM662d2oj,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En esta solumna se visualiza el asunto de la actividad',
            ),
          ),
        ],
      ),
    ];
