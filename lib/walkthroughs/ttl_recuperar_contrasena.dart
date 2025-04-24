import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/tutorialguiado/tutorial/tutorial_widget.dart';

// Focus widget keys for this walkthrough
final textArkf8p47 = GlobalKey();
final textFieldYta372zz = GlobalKey();
final button0yda05og = GlobalKey();

/// ttlRecuperarContrasena
///
///
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// Step 1
      TargetFocus(
        keyTarget: textArkf8p47,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => TutorialWidget(
              tutorial: 'En esta seccion se puede recuperar la contraseña',
            ),
          ),
        ],
      ),

      /// Step 2
      TargetFocus(
        keyTarget: textFieldYta372zz,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => TutorialWidget(
              tutorial: 'Coloque en la siguiente seccion su correo asignado',
            ),
          ),
        ],
      ),

      /// Step 3
      TargetFocus(
        keyTarget: button0yda05og,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'Una vez colocado su correo, seleccione esta opcion para empezar con el proceso de cambio de contraseña',
            ),
          ),
        ],
      ),
    ];
