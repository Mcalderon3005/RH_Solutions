import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'ver_reporte_error_widget.dart' show VerReporteErrorWidget;
import 'package:flutter/material.dart';

class VerReporteErrorModel extends FlutterFlowModel<VerReporteErrorWidget> {
  ///  Local state fields for this page.

  String? codigo = 'No se ha validado el reporte...';

  List<ComentariosStruct> listaComentarios = [];
  void addToListaComentarios(ComentariosStruct item) =>
      listaComentarios.add(item);
  void removeFromListaComentarios(ComentariosStruct item) =>
      listaComentarios.remove(item);
  void removeAtIndexFromListaComentarios(int index) =>
      listaComentarios.removeAt(index);
  void insertAtIndexInListaComentarios(int index, ComentariosStruct item) =>
      listaComentarios.insert(index, item);
  void updateListaComentariosAtIndex(
          int index, Function(ComentariosStruct) updateFn) =>
      listaComentarios[index] = updateFn(listaComentarios[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in verReporteError widget.
  ReporteErroresRecord? il;
  // State field(s) for Switch widget.
  bool? switchValue1;
  // State field(s) for Titulo widget.
  FocusNode? tituloFocusNode1;
  TextEditingController? tituloTextController1;
  String? Function(BuildContext, String?)? tituloTextController1Validator;
  // State field(s) for UsuarioCreador widget.
  FocusNode? usuarioCreadorFocusNode1;
  TextEditingController? usuarioCreadorTextController1;
  String? Function(BuildContext, String?)?
      usuarioCreadorTextController1Validator;
  // State field(s) for txtcodigo widget.
  FocusNode? txtcodigoFocusNode1;
  TextEditingController? txtcodigoTextController1;
  String? Function(BuildContext, String?)? txtcodigoTextController1Validator;
  // Stores action output result for [Custom Action - getDeviceID] action in Button widget.
  String? idError;
  // State field(s) for Descripcion widget.
  FocusNode? descripcionFocusNode1;
  TextEditingController? descripcionTextController1;
  String? Function(BuildContext, String?)? descripcionTextController1Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // State field(s) for DropDown widget.
  String? dropDownValue3;
  FormFieldController<String>? dropDownValueController3;
  // State field(s) for Comentarios widget.
  FocusNode? comentariosFocusNode1;
  TextEditingController? comentariosTextController1;
  String? Function(BuildContext, String?)? comentariosTextController1Validator;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  ReporteErroresRecord? comentariosList;
  // State field(s) for respuestaFinal widget.
  FocusNode? respuestaFinalFocusNode1;
  TextEditingController? respuestaFinalTextController1;
  String? Function(BuildContext, String?)?
      respuestaFinalTextController1Validator;
  // State field(s) for Switch widget.
  bool? switchValue2;
  // State field(s) for Titulo widget.
  FocusNode? tituloFocusNode2;
  TextEditingController? tituloTextController2;
  String? Function(BuildContext, String?)? tituloTextController2Validator;
  // State field(s) for UsuarioCreador widget.
  FocusNode? usuarioCreadorFocusNode2;
  TextEditingController? usuarioCreadorTextController2;
  String? Function(BuildContext, String?)?
      usuarioCreadorTextController2Validator;
  // State field(s) for txtcodigo widget.
  FocusNode? txtcodigoFocusNode2;
  TextEditingController? txtcodigoTextController2;
  String? Function(BuildContext, String?)? txtcodigoTextController2Validator;
  // Stores action output result for [Custom Action - getDeviceID] action in Button widget.
  String? idError1;
  // State field(s) for Descripcion widget.
  FocusNode? descripcionFocusNode2;
  TextEditingController? descripcionTextController2;
  String? Function(BuildContext, String?)? descripcionTextController2Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue4;
  FormFieldController<String>? dropDownValueController4;
  // State field(s) for DropDown widget.
  String? dropDownValue5;
  FormFieldController<String>? dropDownValueController5;
  // State field(s) for DropDown widget.
  String? dropDownValue6;
  FormFieldController<String>? dropDownValueController6;
  // State field(s) for Comentarios widget.
  FocusNode? comentariosFocusNode2;
  TextEditingController? comentariosTextController2;
  String? Function(BuildContext, String?)? comentariosTextController2Validator;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  ReporteErroresRecord? comentariosList1;
  // State field(s) for respuestaFinal widget.
  FocusNode? respuestaFinalFocusNode2;
  TextEditingController? respuestaFinalTextController2;
  String? Function(BuildContext, String?)?
      respuestaFinalTextController2Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tituloFocusNode1?.dispose();
    tituloTextController1?.dispose();

    usuarioCreadorFocusNode1?.dispose();
    usuarioCreadorTextController1?.dispose();

    txtcodigoFocusNode1?.dispose();
    txtcodigoTextController1?.dispose();

    descripcionFocusNode1?.dispose();
    descripcionTextController1?.dispose();

    comentariosFocusNode1?.dispose();
    comentariosTextController1?.dispose();

    respuestaFinalFocusNode1?.dispose();
    respuestaFinalTextController1?.dispose();

    tituloFocusNode2?.dispose();
    tituloTextController2?.dispose();

    usuarioCreadorFocusNode2?.dispose();
    usuarioCreadorTextController2?.dispose();

    txtcodigoFocusNode2?.dispose();
    txtcodigoTextController2?.dispose();

    descripcionFocusNode2?.dispose();
    descripcionTextController2?.dispose();

    comentariosFocusNode2?.dispose();
    comentariosTextController2?.dispose();

    respuestaFinalFocusNode2?.dispose();
    respuestaFinalTextController2?.dispose();
  }
}
