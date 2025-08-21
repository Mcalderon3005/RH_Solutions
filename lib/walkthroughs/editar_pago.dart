import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/tutorialguiado/tutorial/tutorial_widget.dart';

// Focus widget keys for this walkthrough
final textDz0pcm06 = GlobalKey();
final dropDown22j7p15n = GlobalKey();
final iconButton55borgtc = GlobalKey();
final textRmyqnvb3 = GlobalKey();
final textField9gfmoy82 = GlobalKey();
final textFieldKqd81c39 = GlobalKey();
final button8vrxg0ic = GlobalKey();
final buttonF3cdafnz = GlobalKey();

/// editarPago
///
///
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// Step 1
      TargetFocus(
        keyTarget: textDz0pcm06,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En esta sección se corrige el pago a los colaboradores',
            ),
          ),
        ],
      ),

      /// Step 2
      TargetFocus(
        keyTarget: dropDown22j7p15n,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'Se da click para que despliegue las opciones de tipo de pago',
            ),
          ),
        ],
      ),

      /// Step 3
      TargetFocus(
        keyTarget: iconButton55borgtc,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial: 'Se da click para elegir la fecha del pago',
            ),
          ),
        ],
      ),

      /// Step 4
      TargetFocus(
        keyTarget: textRmyqnvb3,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial: 'Una vez ya eligida la fecha se visuliza acá',
            ),
          ),
        ],
      ),

      /// Step 5
      TargetFocus(
        keyTarget: textField9gfmoy82,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial: 'Se escribe el monto del pago al colaborador',
            ),
          ),
        ],
      ),

      /// Step 6
      TargetFocus(
        keyTarget: textFieldKqd81c39,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial: 'Se describe el dtalle sobre el pago',
            ),
          ),
        ],
      ),

      /// Step 7
      TargetFocus(
        keyTarget: button8vrxg0ic,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'Se selecciona el archivo del comprbante del pago del colaborador',
            ),
          ),
        ],
      ),

      /// Step 8
      TargetFocus(
        keyTarget: buttonF3cdafnz,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'Una vez se llenan los campos y esta corregido se da click para guardar los cambios',
            ),
          ),
        ],
      ),
    ];
