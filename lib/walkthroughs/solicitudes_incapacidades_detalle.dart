import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/tutorialguiado/tutorial/tutorial_widget.dart';

// Focus widget keys for this walkthrough
final textNjcbqb3o = GlobalKey();
final rowF2sb92as = GlobalKey();
final switchZb9lsf8h = GlobalKey();
final buttonFbik1f55 = GlobalKey();
final buttonKehhqje0 = GlobalKey();

/// solicitudesIncapacidadesDetalle
///
///
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// Step 1
      TargetFocus(
        keyTarget: textNjcbqb3o,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En esta sección se visualizzan los datos de las incapacidades',
            ),
          ),
        ],
      ),

      /// Step 2
      TargetFocus(
        keyTarget: rowF2sb92as,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En esta sección se refleja los datos del colaborador que envio la incapacidad',
            ),
          ),
        ],
      ),

      /// Step 3
      TargetFocus(
        keyTarget: switchZb9lsf8h,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'Este botón refleja el estado de la incapacidad en revisión o revisado',
            ),
          ),
        ],
      ),

      /// Step 4
      TargetFocus(
        keyTarget: buttonFbik1f55,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial: 'Con este botón se elimina la solicitud',
            ),
          ),
        ],
      ),

      /// Step 5
      TargetFocus(
        keyTarget: buttonKehhqje0,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'Una vez revisado los datos del empleado se da click en este botón para finalizar con la revisión',
            ),
          ),
        ],
      ),
    ];
