import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/tutorialguiado/tutorial/tutorial_widget.dart';

// Focus widget keys for this walkthrough
final text3o6v9a4d = GlobalKey();
final text5n7lhfu6 = GlobalKey();
final textSleenpr6 = GlobalKey();
final textEuby8ga9 = GlobalKey();
final textY8cpcfdo = GlobalKey();
final textQe5ut7w9 = GlobalKey();
final textVmopsmwu = GlobalKey();
final iconButtonGik96y87 = GlobalKey();
final iconButton2fd8khrm = GlobalKey();
final iconButtonIubx0058 = GlobalKey();

/// ttlFacturacion
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
              tutorial: 'En esta sección se muestra los pagos realizados',
            ),
          ),
        ],
      ),

      /// Step 2
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
                  'En esta columna se muestra los nombres de los empleados',
            ),
          ),
        ],
      ),

      /// Step 3
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
              tutorial: 'En esta columna se muestra las fechas de los pagos',
            ),
          ),
        ],
      ),

      /// Step 4
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
              tutorial: 'En esta columna se muestra la canitdad del pago',
            ),
          ),
        ],
      ),

      /// Step 5
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
              tutorial: 'En esta colunma se muestran los detalles del pago',
            ),
          ),
        ],
      ),

      /// Step 6
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
              tutorial: 'En esta colunma se muestran el tipo de pago',
            ),
          ),
        ],
      ),

      /// Step 7
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
                  'En esta columna se muestra las acciones que se pueden realizar con los pagos',
            ),
          ),
        ],
      ),

      /// Step 8
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
              tutorial: 'Este botón permite actualizar los datos del pago',
            ),
          ),
        ],
      ),

      /// Step 9
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
              tutorial: 'Este botón te permite eliminar el pago',
            ),
          ),
        ],
      ),

      /// Step 10
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
              tutorial: 'Este botón te permite descargar los datos del pago',
            ),
          ),
        ],
      ),
    ];
