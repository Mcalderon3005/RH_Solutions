import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/tutorialguiado/tutorial/tutorial_widget.dart';

// Focus widget keys for this walkthrough
final textUpom9jaa = GlobalKey();
final dropDown55zbnrfo = GlobalKey();
final rowXe3akgun = GlobalKey();
final textFieldK64xe4ub = GlobalKey();
final textFieldObp2p5j5 = GlobalKey();
final text9kakhbx1 = GlobalKey();
final buttonHsxrh6g1 = GlobalKey();
final button1njbkwav = GlobalKey();

/// corregirPago
///
///
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// Step 1
      TargetFocus(
        keyTarget: textUpom9jaa,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial: 'En esta sección ',
            ),
          ),
        ],
      ),

      /// Step 2
      TargetFocus(
        keyTarget: dropDown55zbnrfo,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'Puedes elegir el tipo de pago a corregir entre pago y bonificación',
            ),
          ),
        ],
      ),

      /// Step 3
      TargetFocus(
        keyTarget: rowXe3akgun,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial: 'Se selecciona la fecha correcta del pago',
            ),
          ),
        ],
      ),

      /// Step 4
      TargetFocus(
        keyTarget: textFieldK64xe4ub,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial: 'Se digita el monto correcto del pago',
            ),
          ),
        ],
      ),

      /// Step 5
      TargetFocus(
        keyTarget: textFieldObp2p5j5,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial: 'Se escribe el detalle del pago',
            ),
          ),
        ],
      ),

      /// Step 6
      TargetFocus(
        keyTarget: text9kakhbx1,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial: 'Se elige el comprobante de pago',
            ),
          ),
        ],
      ),

      /// Step 7
      TargetFocus(
        keyTarget: buttonHsxrh6g1,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial: 'Si se cambia el comprobante se da click en el botón',
            ),
          ),
        ],
      ),

      /// Step 8
      TargetFocus(
        keyTarget: button1njbkwav,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'Una vez se llena los campos se da click en este botón para finalizar',
            ),
          ),
        ],
      ),
    ];
