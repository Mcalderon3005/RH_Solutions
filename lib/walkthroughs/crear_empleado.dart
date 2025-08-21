import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/tutorialguiado/tutorial/tutorial_widget.dart';

// Focus widget keys for this walkthrough
final textW6kfhgmy = GlobalKey();
final textFieldIr9eq7r1 = GlobalKey();
final textField349ii7c2 = GlobalKey();
final textFieldNcr2kila = GlobalKey();
final textField2674juvs = GlobalKey();
final textFieldUo9a1jmn = GlobalKey();
final textFieldVqc9usq0 = GlobalKey();
final textFieldLv8fl7ts = GlobalKey();
final dropDown9n3nrneq = GlobalKey();
final iconButtonXr6f1eyk = GlobalKey();
final iconButtonJkw1eoel = GlobalKey();
final textFieldA8vsneci = GlobalKey();
final iconButtonIe3ntds3 = GlobalKey();
final buttonW2nc8fmz = GlobalKey();

/// CrearEmpleado
///
///
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// Step 1
      TargetFocus(
        keyTarget: textW6kfhgmy,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial: 'En esta sección puedes crear un nuevo empleados',
            ),
          ),
        ],
      ),

      /// Step 2
      TargetFocus(
        keyTarget: textFieldIr9eq7r1,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En esta sección debes escribir los nombres del colaborador',
            ),
          ),
        ],
      ),

      /// Step 3
      TargetFocus(
        keyTarget: textField349ii7c2,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En esta sección debes escribir los apellidos del colaborador',
            ),
          ),
        ],
      ),

      /// Step 4
      TargetFocus(
        keyTarget: textFieldNcr2kila,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En esta sección debes escribir el correo electronico del colaborador',
            ),
          ),
        ],
      ),

      /// Step 5
      TargetFocus(
        keyTarget: textField2674juvs,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'Se le asigna una contraseña para el inicio de sesión del colaborador',
            ),
          ),
        ],
      ),

      /// Step 6
      TargetFocus(
        keyTarget: textFieldUo9a1jmn,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En esta sección debes escribir el cargo del colaborador',
            ),
          ),
        ],
      ),

      /// Step 7
      TargetFocus(
        keyTarget: textFieldVqc9usq0,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En esta sección debes escribir el número de cédula del colaborador',
            ),
          ),
        ],
      ),

      /// Step 8
      TargetFocus(
        keyTarget: textFieldLv8fl7ts,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En esta sección debes escribir el número de teléfono del colaborador',
            ),
          ),
        ],
      ),

      /// Step 9
      TargetFocus(
        keyTarget: dropDown9n3nrneq,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'Se selecciona el rol que tendra el usuario sobre el sistema',
            ),
          ),
        ],
      ),

      /// Step 10
      TargetFocus(
        keyTarget: iconButtonXr6f1eyk,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'Se da click para seleccionar la fecha de nacimiento del colaboradoor',
            ),
          ),
        ],
      ),

      /// Step 11
      TargetFocus(
        keyTarget: iconButtonJkw1eoel,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'Se da click para seleccionar la fecha de contratación del colaboradoor',
            ),
          ),
        ],
      ),

      /// Step 12
      TargetFocus(
        keyTarget: textFieldA8vsneci,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En esta sección debes escribir el sueldo del colaborador',
            ),
          ),
        ],
      ),

      /// Step 13
      TargetFocus(
        keyTarget: iconButtonIe3ntds3,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial: 'En esta sección se sube una foto del colaborador',
            ),
          ),
        ],
      ),

      /// Step 14
      TargetFocus(
        keyTarget: buttonW2nc8fmz,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'Una vez que se llenan los campos, se da click para guardar al colaborador',
            ),
          ),
        ],
      ),
    ];
