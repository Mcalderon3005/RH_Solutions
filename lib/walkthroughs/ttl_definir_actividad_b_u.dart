import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/tutorialguiado/tutorial/tutorial_widget.dart';

// Focus widget keys for this walkthrough
final text5zbzdeso = GlobalKey();
final columnVhxxhzsm = GlobalKey();
final rowX6sx9zfp = GlobalKey();
final iconButton7px7i7jq = GlobalKey();
final iconButtonF2r232ee = GlobalKey();

/// ttlDefinirActividadBU
///
///
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// Step 1
      TargetFocus(
        keyTarget: text5zbzdeso,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En esta pantalla se presentaran las actividades ya agendadas',
            ),
          ),
        ],
      ),

      /// Step 2
      TargetFocus(
        keyTarget: columnVhxxhzsm,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En esta seccion apareceran las actividades con sus datos claves',
            ),
          ),
        ],
      ),

      /// Step 3
      TargetFocus(
        keyTarget: rowX6sx9zfp,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'Si desea buscar una actividad mas rapido puede utilizar esta barra de busqueda',
            ),
          ),
        ],
      ),

      /// Step 4
      TargetFocus(
        keyTarget: iconButton7px7i7jq,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial: 'Para editar alguna actividad seleccione esta opcion',
            ),
          ),
        ],
      ),

      /// Step 5
      TargetFocus(
        keyTarget: iconButtonF2r232ee,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'Si desea generar una nueva actividad, seleccione esta opcion',
            ),
          ),
        ],
      ),
    ];
