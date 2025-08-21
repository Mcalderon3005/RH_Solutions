import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/tutorialguiado/tutorial/tutorial_widget.dart';

// Focus widget keys for this walkthrough
final textAik1u3tr = GlobalKey();
final buttonB6o2ojyq = GlobalKey();
final text7sdgzels = GlobalKey();
final textMhdhw377 = GlobalKey();
final text31pcc5o6 = GlobalKey();
final textMhvl89f6 = GlobalKey();
final textM2ignltb = GlobalKey();
final iconButtonKappvy3o = GlobalKey();
final iconButton7ie3klds = GlobalKey();

/// FacturacionEmpleado
///
///
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// Step 1
      TargetFocus(
        keyTarget: textAik1u3tr,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En esta sección se visualizan los pagos realizados por la compañia',
            ),
          ),
        ],
      ),

      /// Step 2
      TargetFocus(
        keyTarget: buttonB6o2ojyq,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'Al dar click en este botón te dirige a una sección en la cual puedes visualizar los pedidos de correción ',
            ),
          ),
        ],
      ),

      /// Step 3
      TargetFocus(
        keyTarget: text7sdgzels,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En esta columna se visualiza los empleados a los que se les realizó un pago ',
            ),
          ),
        ],
      ),

      /// Step 4
      TargetFocus(
        keyTarget: textMhdhw377,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En esta columna se visulizan las fechas de los pagos realizados',
            ),
          ),
        ],
      ),

      /// Step 5
      TargetFocus(
        keyTarget: text31pcc5o6,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial: 'En esta columna se visulizan los pagos realizados',
            ),
          ),
        ],
      ),

      /// Step 6
      TargetFocus(
        keyTarget: textMhvl89f6,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial: 'En esta columna se visulizan el detalle de los pagos',
            ),
          ),
        ],
      ),

      /// Step 7
      TargetFocus(
        keyTarget: textM2ignltb,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En esta columna se visulizan el tipo de pago realizado',
            ),
          ),
        ],
      ),

      /// Step 8
      TargetFocus(
        keyTarget: iconButtonKappvy3o,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'Este botón te deirge a solicitar la correción de un pago',
            ),
          ),
        ],
      ),

      /// Step 9
      TargetFocus(
        keyTarget: iconButton7ie3klds,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial: 'Este botón descarga los comprobantes de pago',
            ),
          ),
        ],
      ),
    ];
