import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/tutorialguiado/tutorial/tutorial_widget.dart';

// Focus widget keys for this walkthrough
final textSjxylq2j = GlobalKey();
final rowAe75yonn = GlobalKey();
final textFieldTir948xx = GlobalKey();
final textFieldQ5b8lpnx = GlobalKey();
final textField7x10cecp = GlobalKey();
final listView5nug7ydy = GlobalKey();
final button86om4v9s = GlobalKey();

/// ttlCrearActividad
///
/// Como se usa el crear actividad
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// Step 1
      TargetFocus(
        keyTarget: textSjxylq2j,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial: 'En esta pantalla usted puede generar una actividad',
            ),
          ),
        ],
      ),

      /// Step 2
      TargetFocus(
        keyTarget: rowAe75yonn,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial: 'Seleccione una fecha para la actividad',
            ),
          ),
        ],
      ),

      /// Step 3
      TargetFocus(
        keyTarget: textFieldTir948xx,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial: 'Agregue aqui el enlace a la actividad',
            ),
          ),
        ],
      ),

      /// Step 4
      TargetFocus(
        keyTarget: textFieldQ5b8lpnx,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial: 'Agregue el asunto de la actividad',
            ),
          ),
        ],
      ),

      /// Step 5
      TargetFocus(
        keyTarget: textField7x10cecp,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => TutorialWidget(
              tutorial: 'Agregue una descripcion a la actividad',
            ),
          ),
        ],
      ),

      /// Step 6
      TargetFocus(
        keyTarget: listView5nug7ydy,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'Seleccione los usuarios que desea agregar a la actividad',
            ),
          ),
        ],
      ),

      /// Step 7
      TargetFocus(
        keyTarget: button86om4v9s,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => TutorialWidget(
              tutorial: 'Una vez llenado los datos seleccioe esta opcion',
            ),
          ),
        ],
      ),
    ];
