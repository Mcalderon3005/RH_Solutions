import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/tutorialguiado/tutorial/tutorial_widget.dart';

// Focus widget keys for this walkthrough
final containerNh1nozuf = GlobalKey();
final rowYa8doloq = GlobalKey();
final rowYqwrawbk = GlobalKey();
final rowTf7e406k = GlobalKey();
final rowY3nqiolw = GlobalKey();
final rowCrhrqmgc = GlobalKey();
final rowMnfbibpv = GlobalKey();

/// ttlPerfil
///
///
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// Step 1
      TargetFocus(
        keyTarget: containerNh1nozuf,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En esta seccion se presentan diversas opciones a las que tiene acceso',
            ),
          ),
        ],
      ),

      /// Step 2
      TargetFocus(
        keyTarget: rowYa8doloq,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En caso de querer editar su perfil seleccione esta opcion',
            ),
          ),
        ],
      ),

      /// Step 3
      TargetFocus(
        keyTarget: rowYqwrawbk,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En caso de querer cambiar la contraseña seleccione esta opcion',
            ),
          ),
        ],
      ),

      /// Step 4
      TargetFocus(
        keyTarget: rowTf7e406k,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En caso de querer generar un reporte seleccione esta opcion para generar un reporte',
            ),
          ),
        ],
      ),

      /// Step 5
      TargetFocus(
        keyTarget: rowY3nqiolw,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => TutorialWidget(
              tutorial: 'En caso de necesitar ayuda seleccione esta opcion',
            ),
          ),
        ],
      ),

      /// Step 6
      TargetFocus(
        keyTarget: rowCrhrqmgc,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En caso de necesitar contactar a su administrador seleccione esta opcion',
            ),
          ),
        ],
      ),

      /// Step 7
      TargetFocus(
        keyTarget: rowMnfbibpv,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En caso de querer saber informacion de nosotros seleccione esta opcion',
            ),
          ),
        ],
      ),
    ];
