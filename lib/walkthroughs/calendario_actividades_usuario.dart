import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/tutorialguiado/tutorial/tutorial_widget.dart';

// Focus widget keys for this walkthrough
final textYfowtg1b = GlobalKey();
final calendarScpu3v9t = GlobalKey();
final listTile3jrvqgis = GlobalKey();

/// calendarioActividadesUsuario
///
///
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// Step 1
      TargetFocus(
        keyTarget: textYfowtg1b,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En esta sección se visualizan las actividades de la compañia',
            ),
          ),
        ],
      ),

      /// Step 2
      TargetFocus(
        keyTarget: calendarScpu3v9t,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En esta sección se visualiza el calendario con las respectivas actividades del mes',
            ),
          ),
        ],
      ),

      /// Step 3
      TargetFocus(
        keyTarget: listTile3jrvqgis,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En esta secciónm se visualiza la lista de las actividades',
            ),
          ),
        ],
      ),
    ];
