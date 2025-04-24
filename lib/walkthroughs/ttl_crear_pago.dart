import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/tutorialguiado/tutorial/tutorial_widget.dart';

// Focus widget keys for this walkthrough
final text1bs4yktr = GlobalKey();
final dropDownBwvc8moa = GlobalKey();
final dropDownTefxw4xj = GlobalKey();
final rowM5efo98k = GlobalKey();
final textFieldUwhiwpo4 = GlobalKey();
final textField53rupufs = GlobalKey();
final iconButtonY72ntb89 = GlobalKey();
final button8f0j4raj = GlobalKey();

/// ttlCrearPago
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
              tutorial: 'Esta página puedes crear pagos ',
            ),
          ),
        ],
      ),

      /// Step 2
      TargetFocus(
        keyTarget: dropDownBwvc8moa,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial: 'Debes elegir un empleado ',
            ),
          ),
        ],
      ),

      /// Step 3
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
              tutorial: 'Debes elegir un tipo de pago',
            ),
          ),
        ],
      ),

      /// Step 4
      TargetFocus(
        keyTarget: rowM5efo98k,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial: 'Se elige la fecha del dia que se realizo el pago',
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
              tutorial: 'Se digita el monto del pago',
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
              tutorial: 'Se escriben detalles del pago',
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
            align: ContentAlign.right,
            builder: (context, __) => TutorialWidget(
              tutorial: 'Se sube el comprobante del pago',
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
              tutorial: 'Este botón registra los datos llenados sobre el pago',
            ),
          ),
        ],
      ),
    ];
