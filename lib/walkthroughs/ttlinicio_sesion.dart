import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/tutorialguiado/tutorial/tutorial_widget.dart';

// Focus widget keys for this walkthrough
final columnT0v9mrxa = GlobalKey();
final textFieldA4svmzii = GlobalKey();
final textFieldTrzaxjtz = GlobalKey();
final button1ifr5xbr = GlobalKey();
final textRpq4cq3t = GlobalKey();

/// ttlinicioSesion
///
/// Explicacion inicio de sesion
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// Step 1
      TargetFocus(
        keyTarget: columnT0v9mrxa,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial: 'Bienvenido esta es la seccion para iniciar sesion',
            ),
          ),
        ],
      ),

      /// Step 2
      TargetFocus(
        keyTarget: textFieldA4svmzii,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial: 'Ingrese el correo asignado por su administrador',
            ),
          ),
        ],
      ),

      /// Step 3
      TargetFocus(
        keyTarget: textFieldTrzaxjtz,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial: 'En esta seccion ingrese su contraseña ',
            ),
          ),
        ],
      ),

      /// Step 4
      TargetFocus(
        keyTarget: button1ifr5xbr,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => TutorialWidget(
              tutorial: 'Una vez agregados los datos, seleccione esta opcion',
            ),
          ),
        ],
      ),

      /// Step 5
      TargetFocus(
        keyTarget: textRpq4cq3t,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En caso de no recordar su contraseña seleccione esta opcion',
            ),
          ),
        ],
      ),
    ];
