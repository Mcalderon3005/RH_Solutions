import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/tutorialguiado/tutorial/tutorial_widget.dart';

// Focus widget keys for this walkthrough
final textA03sn66l = GlobalKey();
final textFrhxfu0j = GlobalKey();
final textC3bd2xw5 = GlobalKey();
final textTxt7n3rs = GlobalKey();
final textLjqca18e = GlobalKey();
final iconButtonMah86f7w = GlobalKey();
final iconButtonWt6tvnl1 = GlobalKey();

/// ttlIndexEmpleado
///
///
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// Step 1
      TargetFocus(
        keyTarget: textA03sn66l,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial: 'En esta sección se muestra la lista de empleados',
            ),
          ),
        ],
      ),

      /// Step 2
      TargetFocus(
        keyTarget: textFrhxfu0j,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'Esta columna muestra la lista de nombre de los empleados',
            ),
          ),
        ],
      ),

      /// Step 3
      TargetFocus(
        keyTarget: textC3bd2xw5,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En esta columna muestra la lista de los correos asociados a los empleados',
            ),
          ),
        ],
      ),

      /// Step 4
      TargetFocus(
        keyTarget: textTxt7n3rs,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial: 'En esta seccion se muestra el cargo del empleado',
            ),
          ),
        ],
      ),

      /// Step 5
      TargetFocus(
        keyTarget: textLjqca18e,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial: 'En esta colunma se muestra el estado del empleado ',
            ),
          ),
        ],
      ),

      /// Step 6
      TargetFocus(
        keyTarget: iconButtonMah86f7w,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial: 'Este botón te lleva a la pagina de editar el usuario',
            ),
          ),
        ],
      ),

      /// Step 7
      TargetFocus(
        keyTarget: iconButtonWt6tvnl1,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'Este botón te lleva a la pagina de crear nuevos usuarios',
            ),
          ),
        ],
      ),
    ];
