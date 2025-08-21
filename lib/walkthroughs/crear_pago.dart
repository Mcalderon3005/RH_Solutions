import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/tutorialguiado/tutorial/tutorial_widget.dart';

// Focus widget keys for this walkthrough
final text1bs4yktr = GlobalKey();
final dropDownTefxw4xj = GlobalKey();
final iconButtonVn828fc3 = GlobalKey();
final textIreqvr3f = GlobalKey();
final textFieldUwhiwpo4 = GlobalKey();
final textField53rupufs = GlobalKey();
final iconButtonY72ntb89 = GlobalKey();
final button8f0j4raj = GlobalKey();

/// crearPago
///
///
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// Step 1
      TargetFocus(
        keyTarget: text1bs4yktr,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En esta sección se crear el pago para los colaboradores',
            ),
          ),
        ],
      ),

      /// Step 2
      TargetFocus(
        keyTarget: dropDownTefxw4xj,
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
        keyTarget: iconButtonVn828fc3,
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
        keyTarget: textIreqvr3f,
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
        keyTarget: textFieldUwhiwpo4,
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
        keyTarget: textField53rupufs,
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
        keyTarget: iconButtonY72ntb89,
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
        keyTarget: button8f0j4raj,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'Una vez se llenan los campos se da click para guardar el pago',
            ),
          ),
        ],
      ),
    ];
