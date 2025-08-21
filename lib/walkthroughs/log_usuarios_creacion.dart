import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/tutorialguiado/tutorial/tutorial_widget.dart';

// Focus widget keys for this walkthrough
final text68541h3u = GlobalKey();
final textR7g50jcj = GlobalKey();
final textN4lvznpy = GlobalKey();
final textH0pw1hqu = GlobalKey();

/// logUsuariosCreacion
///
///
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// Step 1
      TargetFocus(
        keyTarget: text68541h3u,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En esta sección se ven los usuarios creados y quien lo creo',
            ),
          ),
        ],
      ),

      /// Step 2
      TargetFocus(
        keyTarget: textR7g50jcj,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En esta columna se ve el nombre del administrrador que creo el usuario',
            ),
          ),
        ],
      ),

      /// Step 3
      TargetFocus(
        keyTarget: textN4lvznpy,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial: 'En esta columna se ven los usuarios creados',
            ),
          ),
        ],
      ),

      /// Step 4
      TargetFocus(
        keyTarget: textH0pw1hqu,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En esta columna se ve la fecha en la que se creo el usuario',
            ),
          ),
        ],
      ),
    ];
