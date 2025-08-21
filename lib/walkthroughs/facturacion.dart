import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/tutorialguiado/tutorial/tutorial_widget.dart';

// Focus widget keys for this walkthrough
final text3o6v9a4d = GlobalKey();
final iconButtonQximsqrl = GlobalKey();
final buttonAtkx6elk = GlobalKey();
final text5n7lhfu6 = GlobalKey();
final textSleenpr6 = GlobalKey();
final textEuby8ga9 = GlobalKey();
final textY8cpcfdo = GlobalKey();
final textQe5ut7w9 = GlobalKey();
final textVmopsmwu = GlobalKey();
final iconButtonGik96y87 = GlobalKey();
final iconButton2fd8khrm = GlobalKey();
final iconButtonIubx0058 = GlobalKey();

/// Facturacion
///
///
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// Step 1
      TargetFocus(
        keyTarget: text3o6v9a4d,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial: 'En esta se',
            ),
          ),
        ],
      ),

      /// Step 2
      TargetFocus(
        keyTarget: iconButtonQximsqrl,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'Al dar click en este botón dirige a la sección de crear un nuevo pago',
            ),
          ),
        ],
      ),

      /// Step 3
      TargetFocus(
        keyTarget: buttonAtkx6elk,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'Al dar click en este botón dirige a la sección de revisión de solicitudes',
            ),
          ),
        ],
      ),

      /// Step 4
      TargetFocus(
        keyTarget: text5n7lhfu6,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En esta columna se visualizan los empleados a los que se realizó un pago',
            ),
          ),
        ],
      ),

      /// Step 5
      TargetFocus(
        keyTarget: textSleenpr6,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En esta columna se visualizan las fechas en las se realizó el pago',
            ),
          ),
        ],
      ),

      /// Step 6
      TargetFocus(
        keyTarget: textEuby8ga9,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial: 'En esta columna se visualizan los montos de los pagos',
            ),
          ),
        ],
      ),

      /// Step 7
      TargetFocus(
        keyTarget: textY8cpcfdo,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial: 'En esta columna se visualizan los detalles del pago',
            ),
          ),
        ],
      ),

      /// Step 8
      TargetFocus(
        keyTarget: textQe5ut7w9,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En esta columna se visulizan los tipos de pagos si es bono, aguinaldo o pago del salario',
            ),
          ),
        ],
      ),

      /// Step 9
      TargetFocus(
        keyTarget: textVmopsmwu,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En esta sección se visulizan 3 acciones se puede realizar con cada pago',
            ),
          ),
        ],
      ),

      /// Step 10
      TargetFocus(
        keyTarget: iconButtonGik96y87,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial: 'Al dar click en este botón se editan el pago',
            ),
          ),
        ],
      ),

      /// Step 11
      TargetFocus(
        keyTarget: iconButton2fd8khrm,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial: 'Al dar click en este botón se elimina el pago',
            ),
          ),
        ],
      ),

      /// Step 12
      TargetFocus(
        keyTarget: iconButtonIubx0058,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'Al dar click en este botón se descarga el comprobante del pago',
            ),
          ),
        ],
      ),
    ];
