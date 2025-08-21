import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/tutorialguiado/tutorial/tutorial_widget.dart';

// Focus widget keys for this walkthrough
final textSjxylq2j = GlobalKey();
final iconButtonNkqiz2zi = GlobalKey();
final textO4mrcj1c = GlobalKey();
final textFieldTir948xx = GlobalKey();
final textFieldQ5b8lpnx = GlobalKey();
final textField7x10cecp = GlobalKey();
final listView5nug7ydy = GlobalKey();
final button86om4v9s = GlobalKey();

/// CrearActividad
///
///
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
              tutorial:
                  'En esta sección puedes agendar actvidades como reuniones',
            ),
          ),
        ],
      ),

      /// Step 2
      TargetFocus(
        keyTarget: iconButtonNkqiz2zi,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'Para agendar la fecha de la actividad le das click en este botón',
            ),
          ),
        ],
      ),

      /// Step 3
      TargetFocus(
        keyTarget: textO4mrcj1c,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial: 'Una vez elegida la fecha se visualiza ',
            ),
          ),
        ],
      ),

      /// Step 4
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
              tutorial:
                  'Se adjunta un link de la plataforma en la cual es la actividad',
            ),
          ),
        ],
      ),

      /// Step 5
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
              tutorial: 'Se detalla el asunto de la actvidad',
            ),
          ),
        ],
      ),

      /// Step 6
      TargetFocus(
        keyTarget: textField7x10cecp,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial: 'Se detalla el motivo de la actividad',
            ),
          ),
        ],
      ),

      /// Step 7
      TargetFocus(
        keyTarget: listView5nug7ydy,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'Se eligen los participantes que invitados a la actividad',
            ),
          ),
        ],
      ),

      /// Step 8
      TargetFocus(
        keyTarget: button86om4v9s,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'Una vez que que llenas los campos le das click en este botón para agendar la reunión',
            ),
          ),
        ],
      ),
    ];
