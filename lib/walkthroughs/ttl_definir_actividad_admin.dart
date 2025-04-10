import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/tutorialguiado/tutorial/tutorial_widget.dart';

// Focus widget keys for this walkthrough
final text438dznuh = GlobalKey();
final paginatedDataTableHdkwq73l = GlobalKey();
final rowU6ppqnvi = GlobalKey();
final iconButtonJgv46yge = GlobalKey();

/// ttlDefinirActividadAdmin
///
///
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// Step 1
      TargetFocus(
        keyTarget: text438dznuh,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial: 'Se presentaran las actividades generadas actualmente',
            ),
          ),
        ],
      ),

      /// Step 2
      TargetFocus(
        keyTarget: paginatedDataTableHdkwq73l,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En esta seccion apareceran las actividades ya generadas con os datos clave de cada una',
            ),
          ),
        ],
      ),

      /// Step 3
      TargetFocus(
        keyTarget: rowU6ppqnvi,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'Si necesita buscar una actividad en especifico puede utilizar esta barra de busqueda',
            ),
          ),
        ],
      ),

      /// Step 4
      TargetFocus(
        keyTarget: iconButtonJgv46yge,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'Si desea generar una nueva actividad, seleccione la siguiente opcion',
            ),
          ),
        ],
      ),
    ];
