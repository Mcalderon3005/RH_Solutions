import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/tutorialguiado/tutorial/tutorial_widget.dart';

// Focus widget keys for this walkthrough
final textKckgn44x = GlobalKey();
final textDs4b3hcr = GlobalKey();
final text0k0urxxl = GlobalKey();
final text4rkns2h1 = GlobalKey();

/// logUsuariosActualizacion
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
              tutorial: 'En esta sección se ven loa usuarios actualizados',
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
                  'En esta columna se ve el administrador que realizó los cambios',
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
                  'En esta columna se ve el colaborador que se le cambiaron los datos',
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
                  'En esta columna se ve la fecha que se hicieron los cambios ',
            ),
          ),
        ],
      ),
    ];
