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
final row6gwlpmot = GlobalKey();
final rowRhlyvfd2 = GlobalKey();
final textFieldA8vsneci = GlobalKey();
final iconButtonIe3ntds3 = GlobalKey();
final buttonW2nc8fmz = GlobalKey();

/// ttlCrearEmpleado
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
              tutorial: 'En esta pagina podras crear un nuevo usuario',
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
              tutorial: 'Ingrese el nombre del colaborador',
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
              tutorial: 'Ingrese el apellido del cobalorador',
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
              tutorial: 'Ingrese el correo asignado al colaborador',
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
              tutorial: 'Ingrese la contraseña asignada al colaborador',
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
              tutorial: 'Ingrese el cargo que va a tener el colaborador ',
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
            align: ContentAlign.top,
            builder: (context, __) => TutorialWidget(
              tutorial: 'Ingrese la cedula del colaborador',
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
            align: ContentAlign.top,
            builder: (context, __) => TutorialWidget(
              tutorial: 'Ingrese el numero de telefono del colaborador',
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
            align: ContentAlign.top,
            builder: (context, __) => TutorialWidget(
              tutorial: 'Seleccione el rol que va a tener el colaborador',
            ),
          ),
        ],
      ),

      /// Step 10
      TargetFocus(
        keyTarget: row6gwlpmot,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => TutorialWidget(
              tutorial: 'Ingrese la fecha de nacimiento del colaborador',
            ),
          ),
        ],
      ),

      /// Step 11
      TargetFocus(
        keyTarget: rowRhlyvfd2,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => TutorialWidget(
              tutorial: 'Ingrese la fecha de contratacion del colaborador',
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
            align: ContentAlign.top,
            builder: (context, __) => TutorialWidget(
              tutorial: 'Seleccione el monto a pagar del colaborador',
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
            align: ContentAlign.top,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En caso de agregar una foto para el nuevo colaborador selecionar este icono y escoja la imagen de preferencia',
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
            align: ContentAlign.top,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'Una vez llenado los datos anteriores seleccione este boton para crear al colaborador',
            ),
          ),
        ],
      ),
    ];
