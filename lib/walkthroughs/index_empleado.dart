import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/tutorialguiado/tutorial/tutorial_widget.dart';

// Focus widget keys for this walkthrough
final textA03sn66l = GlobalKey();
final iconButtonWt6tvnl1 = GlobalKey();
final textFrhxfu0j = GlobalKey();
final textC3bd2xw5 = GlobalKey();
final textTxt7n3rs = GlobalKey();
final textLjqca18e = GlobalKey();
final iconButtonMah86f7w = GlobalKey();

/// indexEmpleado
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
              tutorial:
                  'En esta sección se visulizan datos generales de los empleados',
            ),
          ),
        ],
      ),

      /// Step 2
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
                  'Al dar click en este botón te dirige a crear un nuevo usuario',
            ),
          ),
        ],
      ),

      /// Step 3
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
                  'En esta columna se visualiza los nombres de los colaboradores',
            ),
          ),
        ],
      ),

      /// Step 4
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
                  'En esta columna se visualiza los correos de los colaboradores',
            ),
          ),
        ],
      ),

      /// Step 5
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
              tutorial:
                  'En esta columna se visualiza los cargos de los colaboradores',
            ),
          ),
        ],
      ),

      /// Step 6
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
              tutorial:
                  'En esta columna se visualiza el estado de los colaboradores en la empresa',
            ),
          ),
        ],
      ),

      /// Step 7
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
              tutorial:
                  'Al dar click en este botón te dirige a editar el perfil de colaborador asi como el estado ',
            ),
          ),
        ],
      ),
    ];
