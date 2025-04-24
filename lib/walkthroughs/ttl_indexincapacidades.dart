import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/tutorialguiado/tutorial/tutorial_widget.dart';

// Focus widget keys for this walkthrough
final textUg9ykk4k = GlobalKey();

/// ttlIndexincapacidades
///
/// Explicacion de la seccion incapacicdades
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// Step 1
      TargetFocus(
        keyTarget: textUg9ykk4k,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En esta seccion se presentaran los datos de la incapacidad, la fecha, fecha de inicio, final,y estado de revision  ',
            ),
          ),
        ],
      ),
    ];
