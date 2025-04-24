import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/tutorialguiado/tutorial/tutorial_widget.dart';

// Focus widget keys for this walkthrough
final textDz0pcm06 = GlobalKey();
final dropDown22j7p15n = GlobalKey();
final rowE2llabhj = GlobalKey();
final textField9gfmoy82 = GlobalKey();
final textFieldKqd81c39 = GlobalKey();
final button8vrxg0ic = GlobalKey();
final buttonF3cdafnz = GlobalKey();

/// tllEditarPago
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
              tutorial: 'En esta página puedes editar los datos de los pagos',
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
              tutorial: 'Se selecciona el tipo de pago',
            ),
          ),
        ],
      ),

      /// Step 3
      TargetFocus(
        keyTarget: rowE2llabhj,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial: 'Se selecciona la fecha',
            ),
          ),
        ],
      ),

      /// Step 4
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
              tutorial: 'Se escribe el monto del pago',
            ),
          ),
        ],
      ),

      /// Step 5
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
              tutorial: 'Se detallan los datos del pago',
            ),
          ),
        ],
      ),

      /// Step 6
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
              tutorial: 'Se selecciona la imagén del comprobante',
            ),
          ),
        ],
      ),

      /// Step 7
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
              tutorial: 'Se guardan los datos editados sobre el pago',
            ),
          ),
        ],
      ),
    ];
