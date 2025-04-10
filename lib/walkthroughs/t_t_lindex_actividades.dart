import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/tutorialguiado/tutorial/tutorial_widget.dart';

// Focus widget keys for this walkthrough
final column4obgbcqb = GlobalKey();
final paginatedDataTable2kkr3s02 = GlobalKey();
final rowAlrsvw8p = GlobalKey();
final iconButtonBvm6qcn0 = GlobalKey();

/// tTLindexActividades
///
/// Informacion de actividades
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// Step 1
      TargetFocus(
        keyTarget: column4obgbcqb,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial: 'Esta es la seccion de actividades',
            ),
          ),
        ],
      ),

      /// Step 2
      TargetFocus(
        keyTarget: paginatedDataTable2kkr3s02,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En esta seccion apareceran las actividades agendadas con detalles',
            ),
          ),
        ],
      ),

      /// Step 3
      TargetFocus(
        keyTarget: rowAlrsvw8p,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'Esta es una barra de busqueda para ubicar las actividades por creador ',
            ),
          ),
        ],
      ),

      /// Step 4
      TargetFocus(
        keyTarget: iconButtonBvm6qcn0,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial: 'Este boton funciona para eliminar una actividad',
            ),
          ),
        ],
      ),
    ];
