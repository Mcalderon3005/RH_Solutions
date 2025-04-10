import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/tutorialguiado/mensaje_login/mensaje_login_widget.dart';

// Focus widget keys for this walkthrough
final buttonNqjxzg5r = GlobalKey();

/// TutorialLogin
///
/// Explicar para empezar
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// Step 1
      TargetFocus(
        keyTarget: buttonNqjxzg5r,
        enableOverlayTab: true,
        alignSkip: Alignment.topRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => MensajeLoginWidget(
              texto: 'Bienvenido, selecciona iniciar sesion para empezar',
            ),
          ),
        ],
      ),
    ];
