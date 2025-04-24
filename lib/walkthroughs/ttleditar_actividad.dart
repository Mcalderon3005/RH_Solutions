import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/tutorialguiado/tutorial/tutorial_widget.dart';

// Focus widget keys for this walkthrough
final textGglepnlc = GlobalKey();
final row1tcllwxq = GlobalKey();
final textFieldA3uh0b6k = GlobalKey();
final textFieldI9tnqdeo = GlobalKey();
final textFieldSc0cz2ah = GlobalKey();
final dropDownR5491856 = GlobalKey();
final listViewZw5luoqe = GlobalKey();
final buttonSvgbkldo = GlobalKey();

/// ttleditarActividad
///
///
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// Step 1
      TargetFocus(
        keyTarget: textGglepnlc,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En la siguiente pagina le vamos a mostrar como edtitar una actividad',
            ),
          ),
        ],
      ),

      /// Step 2
      TargetFocus(
        keyTarget: row1tcllwxq,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'Seleccione una fecha en caso de querer cambiar la colocada con anterioridad',
            ),
          ),
        ],
      ),

      /// Step 3
      TargetFocus(
        keyTarget: textFieldA3uh0b6k,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En caso de tener un nuevo enlace, soloquelo en esta seccion',
            ),
          ),
        ],
      ),

      /// Step 4
      TargetFocus(
        keyTarget: textFieldI9tnqdeo,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'En caso de necesitar cambiar el asunto de la reunion, seleccione esta parte',
            ),
          ),
        ],
      ),

      /// Step 5
      TargetFocus(
        keyTarget: textFieldSc0cz2ah,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'Si requiere cambiar la descripcion, puede hacerlo en esta seccion',
            ),
          ),
        ],
      ),

      /// Step 6
      TargetFocus(
        keyTarget: dropDownR5491856,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => TutorialWidget(
              tutorial:
                  'Puede seleccionar en esta parte la lista de participantes de la reunion',
            ),
          ),
        ],
      ),

      /// Step 7
      TargetFocus(
        keyTarget: listViewZw5luoqe,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => TutorialWidget(
              tutorial: 'Aqui se presentara la lista de participantes',
            ),
          ),
        ],
      ),

      /// Step 8
      TargetFocus(
        keyTarget: buttonSvgbkldo,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => TutorialWidget(
              tutorial: 'Seleccione esta opcion para guardar los cambios',
            ),
          ),
        ],
      ),
    ];
