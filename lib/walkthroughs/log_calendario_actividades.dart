import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/tutorialguiado/tutorial/tutorial_widget.dart';

// Focus widget keys for this walkthrough
final text2b8weskj = GlobalKey();
final textFdkrm9fn = GlobalKey();
final textEyfk3q6w = GlobalKey();
final text1y0kmwlv = GlobalKey();
final textM00m872u = GlobalKey();
final iconButtonRmgy5s77 = GlobalKey();
final iconButton2ak6tdul = GlobalKey();

/// logCalendarioActividades
///
///
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// Step 1
      TargetFocus(
        keyTarget: text2b8weskj,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En esta sección se visulizan las actividades de la empresa',
            ),
          ),
        ],
      ),

      /// Step 2
      TargetFocus(
        keyTarget: textFdkrm9fn,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En esta columna se vuslizan los organizadores de las actividades',
            ),
          ),
        ],
      ),

      /// Step 3
      TargetFocus(
        keyTarget: textEyfk3q6w,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En esta columna se visulizan las fechas en las que se organizan las actividades',
            ),
          ),
        ],
      ),

      /// Step 4
      TargetFocus(
        keyTarget: text1y0kmwlv,
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

      /// Step 5
      TargetFocus(
        keyTarget: textM00m872u,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En esta columna puedes editar o eliminar las actividades',
            ),
          ),
        ],
      ),

      /// Step 6
      TargetFocus(
        keyTarget: iconButtonRmgy5s77,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'Al dar click en este botón te permite editar las actividades',
            ),
          ),
        ],
      ),

      /// Step 7
      TargetFocus(
        keyTarget: iconButton2ak6tdul,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial: 'Al dar click en este botón eliminar las actividades',
            ),
          ),
        ],
      ),
    ];
