import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/tutorialguiado/tutorial/tutorial_widget.dart';

// Focus widget keys for this walkthrough
final text8i6bp0f6 = GlobalKey();
final textI7wy20c6 = GlobalKey();
final textNutpxt7r = GlobalKey();
final textSq86qze9 = GlobalKey();
final buttonDy30xwxs = GlobalKey();
final buttonMg1r1spn = GlobalKey();

/// SolicitudesIndex
///
///
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// Step 1
      TargetFocus(
        keyTarget: text8i6bp0f6,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En esta sección se realizan las correciones de los pagos de la compañia',
            ),
          ),
        ],
      ),

      /// Step 2
      TargetFocus(
        keyTarget: textI7wy20c6,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial: 'En esta columna se visulizan los pagos realizados ',
            ),
          ),
        ],
      ),

      /// Step 3
      TargetFocus(
        keyTarget: textNutpxt7r,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En esta columna se visulizan las fechas de solicitudes de correciones',
            ),
          ),
        ],
      ),

      /// Step 4
      TargetFocus(
        keyTarget: textSq86qze9,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En esta columna se visulizan los detalles de las correcciones',
            ),
          ),
        ],
      ),

      /// Step 5
      TargetFocus(
        keyTarget: buttonDy30xwxs,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial: 'Este botón dirige a editar el pago realizado',
            ),
          ),
        ],
      ),

      /// Step 6
      TargetFocus(
        keyTarget: buttonMg1r1spn,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial: 'Este botón señala que ya se reviso el pago',
            ),
          ),
        ],
      ),
    ];
