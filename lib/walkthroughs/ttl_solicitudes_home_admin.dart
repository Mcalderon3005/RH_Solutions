import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/tutorialguiado/tutorial/tutorial_widget.dart';

// Focus widget keys for this walkthrough
final textJdir8o53 = GlobalKey();
final containerIjwotinz = GlobalKey();
final container8lncgrki = GlobalKey();

/// ttlSolicitudesHomeAdmin
///
///
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// Step 1
      TargetFocus(
        keyTarget: textJdir8o53,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial: 'En esta página muestra un menú de solicitudes',
            ),
          ),
        ],
      ),

      /// Step 2
      TargetFocus(
        keyTarget: containerIjwotinz,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'Este botón te lleva a la página de solicitudes de incapacidades',
            ),
          ),
        ],
      ),

      /// Step 3
      TargetFocus(
        keyTarget: container8lncgrki,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'Este botón lleva a al página de solicitudes de vacaciones ',
            ),
          ),
        ],
      ),
    ];
