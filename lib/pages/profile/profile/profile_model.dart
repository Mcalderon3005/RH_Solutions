import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart'
    show TutorialCoachMark;
import 'profile_widget.dart' show ProfileWidget;
import 'package:flutter/material.dart';

class ProfileModel extends FlutterFlowModel<ProfileWidget> {
  ///  State fields for stateful widgets in this page.

  TutorialCoachMark? ttlPerfilController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    ttlPerfilController?.finish();
  }
}
