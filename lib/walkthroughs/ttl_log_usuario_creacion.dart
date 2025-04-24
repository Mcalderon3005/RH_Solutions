import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/tutorialguiado/tutorial/tutorial_widget.dart';

// Focus widget keys for this walkthrough
final textKckgn44x = GlobalKey();
final textDs4b3hcr = GlobalKey();
final text0k0urxxl = GlobalKey();
final text4rkns2h1 = GlobalKey();

/// ttlLogUsuarioCreacion
///
///
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// Step 1
      TargetFocus(
        keyTarget: textKckgn44x,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En esta página se muestran los usuarios que han sido actualizados',
            ),
          ),
        ],
      ),

      /// Step 2
      TargetFocus(
        keyTarget: textDs4b3hcr,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En esta columna se muestra la lista del usuario que hizo la actualización de los datos',
            ),
          ),
        ],
      ),

      /// Step 3
      TargetFocus(
        keyTarget: text0k0urxxl,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En esta columna se muestra la lista de los usuarios que sus datos fueron actualizados',
            ),
          ),
        ],
      ),

      /// Step 4
      TargetFocus(
        keyTarget: text4rkns2h1,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En esta columna se muestra la fecha del cambio de los datos ',
            ),
          ),
        ],
      ),
    ];
