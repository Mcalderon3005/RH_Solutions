import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/tutorialguiado/tutorial/tutorial_widget.dart';

// Focus widget keys for this walkthrough
final textXifso2n5 = GlobalKey();
final textFieldK1ozn5op = GlobalKey();
final buttonMppeepiy = GlobalKey();
final textHw0z6p67 = GlobalKey();
final text1dtz4m75 = GlobalKey();
final text2i5o8jkv = GlobalKey();
final textJvmfsnod = GlobalKey();

/// indexActividades
///
///
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// Step 1
      TargetFocus(
        keyTarget: textXifso2n5,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En esta sección se visualiza la lista de actividades de la compañia',
            ),
          ),
        ],
      ),

      /// Step 2
      TargetFocus(
        keyTarget: textFieldK1ozn5op,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En esta sección puedes buscar por el nombre del organizador de la actividad o actividades',
            ),
          ),
        ],
      ),

      /// Step 3
      TargetFocus(
        keyTarget: buttonMppeepiy,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'Una vez ingresado el nombre del organizador se da click para buscar la actvidad o actividades',
            ),
          ),
        ],
      ),

      /// Step 4
      TargetFocus(
        keyTarget: textHw0z6p67,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En esta columna se visulizan los nombres de los organizadores',
            ),
          ),
        ],
      ),

      /// Step 5
      TargetFocus(
        keyTarget: text1dtz4m75,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En esta columna se visulizan las fechas de las actvidades',
            ),
          ),
        ],
      ),

      /// Step 6
      TargetFocus(
        keyTarget: text2i5o8jkv,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En esta columna se visulizan los motivos de las actividades',
            ),
          ),
        ],
      ),

      /// Step 7
      TargetFocus(
        keyTarget: textJvmfsnod,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En esta columna se visulizan las fechas de las actvidades',
            ),
          ),
        ],
      ),
    ];
