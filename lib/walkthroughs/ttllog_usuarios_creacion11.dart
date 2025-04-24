import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/tutorialguiado/tutorial/tutorial_widget.dart';

// Focus widget keys for this walkthrough
final text68541h3u = GlobalKey();
final paginatedDataTableKjy2unim = GlobalKey();

/// ttllogUsuariosCreacion11
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
              tutorial: 'Aqui se presentaran los datos de los usuarios creados',
            ),
          ),
        ],
      ),

      /// Step 2
      TargetFocus(
        keyTarget: paginatedDataTableKjy2unim,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'Aqui se presentaran los datos relacionados a la creacion',
            ),
          ),
        ],
      ),
    ];
