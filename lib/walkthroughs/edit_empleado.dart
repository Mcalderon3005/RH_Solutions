import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/tutorialguiado/tutorial/tutorial_widget.dart';

// Focus widget keys for this walkthrough
final textG6ub615i = GlobalKey();
final textFieldRey97k5n = GlobalKey();
final textFieldP1t3n3ue = GlobalKey();
final textFieldC5kyq460 = GlobalKey();
final textField3lf3gy2t = GlobalKey();
final textFieldChf8s1da = GlobalKey();
final textFieldX47xjqd2 = GlobalKey();
final textFieldCb8menlb = GlobalKey();
final iconButtonP3dozq6r = GlobalKey();
final iconButtonQ9swrxe4 = GlobalKey();
final switchIf825eh8 = GlobalKey();
final image2cm0hh1y = GlobalKey();
final buttonBvx4ma18 = GlobalKey();
final button29s5mo7h = GlobalKey();

/// EditEmpleado
///
///
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// Step 1
      TargetFocus(
        keyTarget: textG6ub615i,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En esta sección puedes editar los datos del colaborador',
            ),
          ),
        ],
      ),

      /// Step 2
      TargetFocus(
        keyTarget: textFieldRey97k5n,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En esta sección puedes editar los nombres del colaborador',
            ),
          ),
        ],
      ),

      /// Step 3
      TargetFocus(
        keyTarget: textFieldP1t3n3ue,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En esta sección puedes editar los apellidos del colaborador',
            ),
          ),
        ],
      ),

      /// Step 4
      TargetFocus(
        keyTarget: textFieldC5kyq460,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En esta sección puedes editar el correo electronico del colaborador',
            ),
          ),
        ],
      ),

      /// Step 5
      TargetFocus(
        keyTarget: textField3lf3gy2t,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En esta sección puedes editar el número de cédula del colaborador',
            ),
          ),
        ],
      ),

      /// Step 6
      TargetFocus(
        keyTarget: textFieldChf8s1da,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En esta sección puedes editar el cargo del colaborador',
            ),
          ),
        ],
      ),

      /// Step 7
      TargetFocus(
        keyTarget: textFieldX47xjqd2,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En esta sección puedes editar el número de teléfono del colaborador',
            ),
          ),
        ],
      ),

      /// Step 8
      TargetFocus(
        keyTarget: textFieldCb8menlb,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En esta sección puedes editar el salario del colaborador',
            ),
          ),
        ],
      ),

      /// Step 9
      TargetFocus(
        keyTarget: iconButtonP3dozq6r,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial: 'Al dar click puedes editar la fecha de nacimiento ',
            ),
          ),
        ],
      ),

      /// Step 10
      TargetFocus(
        keyTarget: iconButtonQ9swrxe4,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'Al dar click puedes editar la fecha de contratación del colaborador ',
            ),
          ),
        ],
      ),

      /// Step 11
      TargetFocus(
        keyTarget: switchIf825eh8,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'Al dar click puedes editar el estado del colaborador ya sea activo o inactivo',
            ),
          ),
        ],
      ),

      /// Step 12
      TargetFocus(
        keyTarget: image2cm0hh1y,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial: 'Al dar click puedes cambiar la imagen del colaborador',
            ),
          ),
        ],
      ),

      /// Step 13
      TargetFocus(
        keyTarget: buttonBvx4ma18,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial: 'Al dar click en este botón se elimina el usuario',
            ),
          ),
        ],
      ),

      /// Step 14
      TargetFocus(
        keyTarget: button29s5mo7h,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'Una vez realizado los cambios de los datos del usuario se da click en este botón para actualizar los datos',
            ),
          ),
        ],
      ),
    ];
