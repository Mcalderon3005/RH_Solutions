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
final rowCqrb143x = GlobalKey();
final row9tqkb5fa = GlobalKey();
final rowJurer159 = GlobalKey();
final image2cm0hh1y = GlobalKey();
final buttonBvx4ma18 = GlobalKey();
final button29s5mo7h = GlobalKey();

/// ttlEditEmpleado
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
                  'Para editar los datos de algun colaborador se presentan los siguinetes campos',
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
                  'En caso de necesitar modificar el nombre, cambiarlo en esta seccion',
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
                  'En caso de necesitar modificar el apellido, cambiarlo en esta seccion',
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
                  'En caso de necesitar modificar el correo, cambiarlo en esta seccion',
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
                  'En caso de necesitar modificar la cedula, cambiarlo en esta seccion',
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
                  'En caso de necesitar modificar el rol, cambiarlo en esta seccion',
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
            align: ContentAlign.top,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En caso de necesitar modificar el numero de telefono, cambiarlo en esta seccion',
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
            align: ContentAlign.top,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En caso de necesitar modificar el monto de pago, cambiarlo en esta seccion',
            ),
          ),
        ],
      ),

      /// Step 9
      TargetFocus(
        keyTarget: rowCqrb143x,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En caso de necesitar modificar la fecha de nacimiento, cambiarlo en esta seccion',
            ),
          ),
        ],
      ),

      /// Step 10
      TargetFocus(
        keyTarget: row9tqkb5fa,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En caso de necesitar modificar la fecha de contratacion, cambiarlo en esta seccion',
            ),
          ),
        ],
      ),

      /// Step 11
      TargetFocus(
        keyTarget: rowJurer159,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En caso de necesitar modificar el estado del colaborador, cambiarlo en esta seccion',
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
            align: ContentAlign.top,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En caso de necesitar modificar la foto del colaborador, cambiarlo en esta seccion',
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
            align: ContentAlign.top,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'Si requiere eliminar al colaborador de manera definitiva, seleccione esta opcion',
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
            align: ContentAlign.top,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'Una ves cambiado los datos que queria, seleccione esta opcion para guardar los cambios',
            ),
          ),
        ],
      ),
    ];
