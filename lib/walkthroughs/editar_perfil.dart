import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/tutorialguiado/tutorial/tutorial_widget.dart';

// Focus widget keys for this walkthrough
final textPmxm6w9g = GlobalKey();
final textFieldQod3bd64 = GlobalKey();
final textField02byudmx = GlobalKey();
final textFieldGuu63vya = GlobalKey();
final textFieldCa3nglyb = GlobalKey();
final textField14m0axmw = GlobalKey();
final icon642f2pc2 = GlobalKey();
final textFieldQlzikods = GlobalKey();
final buttonNes8ggze = GlobalKey();

/// editarPerfil
///
///
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// Step 1
      TargetFocus(
        keyTarget: textPmxm6w9g,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial: 'En esta sección se visualiza tus datos',
            ),
          ),
        ],
      ),

      /// Step 2
      TargetFocus(
        keyTarget: textFieldQod3bd64,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial: 'Puedes visualizar tus nombres',
            ),
          ),
        ],
      ),

      /// Step 3
      TargetFocus(
        keyTarget: textField02byudmx,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial: 'Puedes visualizar tus apellidos ',
            ),
          ),
        ],
      ),

      /// Step 4
      TargetFocus(
        keyTarget: textFieldGuu63vya,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial: 'Puedes visualizar tu correo electronico',
            ),
          ),
        ],
      ),

      /// Step 5
      TargetFocus(
        keyTarget: textFieldCa3nglyb,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial: 'Puedes visualizar tu número de cedula ',
            ),
          ),
        ],
      ),

      /// Step 6
      TargetFocus(
        keyTarget: textField14m0axmw,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial: 'Puedes visualizar tu número telefónico',
            ),
          ),
        ],
      ),

      /// Step 7
      TargetFocus(
        keyTarget: icon642f2pc2,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial: 'Puedes editar tu número de contacto',
            ),
          ),
        ],
      ),

      /// Step 8
      TargetFocus(
        keyTarget: textFieldQlzikods,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial: 'Puedes visualizar tu cargo en la empresa',
            ),
          ),
        ],
      ),

      /// Step 9
      TargetFocus(
        keyTarget: buttonNes8ggze,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'Si realizaste un cambio presionas este botón para guardarlos',
            ),
          ),
        ],
      ),
    ];
