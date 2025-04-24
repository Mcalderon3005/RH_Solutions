import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/tutorialguiado/tutorial/tutorial_widget.dart';

// Focus widget keys for this walkthrough
final text6nsrzfms = GlobalKey();
final textP7fxe3q3 = GlobalKey();
final textN87moxgg = GlobalKey();
final textSbdalj6z = GlobalKey();

/// ttlLogErroresSesion
///
///
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// Step 1
      TargetFocus(
        keyTarget: text6nsrzfms,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'Esta página muestra los errores de sesiones de los usuarios',
            ),
          ),
        ],
      ),

      /// Step 2
      TargetFocus(
        keyTarget: textP7fxe3q3,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'Esta columna muestra el usuario del error del inicio sesión',
            ),
          ),
        ],
      ),

      /// Step 3
      TargetFocus(
        keyTarget: textN87moxgg,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'Esta columna muestra la fecha  del error del inicio sesión',
            ),
          ),
        ],
      ),

      /// Step 4
      TargetFocus(
        keyTarget: textSbdalj6z,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'Esta columna muestra la acción  del error del inicio sesión',
            ),
          ),
        ],
      ),
    ];
