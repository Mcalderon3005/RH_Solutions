// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:excel/excel.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io' as io;
import 'dart:typed_data';
import 'dart:html' as html;
import 'package:flutter/foundation.dart';

Future<void> descargarExcel() async {
  // Crear Excel y hoja
  final excel = Excel.createExcel();
  const sheetName = 'Reporte de Errores';
  final sheet = excel[sheetName];
  excel.delete('Sheet1');

  // Encabezados
  final headers = [
    "ID",
    "Titulo",
    "Fecha de la creación",
    "Fecha de completado",
    "Tipo de error",
    "Descripción",
    "EstaActivo",
    "Estado",
    "Asignado al reporte",
    "Creador del reporte"
  ];
  for (var i = 0; i < headers.length; i++) {
    sheet.cell(CellIndex.indexByColumnRow(columnIndex: i, rowIndex: 0)).value =
        TextCellValue(headers[i]);
  }

  // Leer Firestore
  final snapshot =
      await FirebaseFirestore.instance.collection('reporteErrores').get();

  var row = 1;
  for (var doc in snapshot.docs) {
    final data = doc.data() as Map<String, dynamic>;

    sheet
        .cell(CellIndex.indexByColumnRow(columnIndex: 0, rowIndex: row))
        .value = TextCellValue(data['codigoCaso']?.toString() ?? '');

    sheet
        .cell(CellIndex.indexByColumnRow(columnIndex: 1, rowIndex: row))
        .value = TextCellValue(data['tituloError']?.toString() ?? '');

    sheet
            .cell(CellIndex.indexByColumnRow(columnIndex: 2, rowIndex: row))
            .value =
        TextCellValue(data['fechaCreacion'] is Timestamp
            ? (data['fechaCreacion'] as Timestamp).toDate().toString()
            : '');

    sheet
            .cell(CellIndex.indexByColumnRow(columnIndex: 3, rowIndex: row))
            .value =
        TextCellValue(data['fechaCompleto'] is Timestamp
            ? (data['fechaCompleto'] as Timestamp).toDate().toString()
            : '');

    sheet
        .cell(CellIndex.indexByColumnRow(columnIndex: 4, rowIndex: row))
        .value = TextCellValue(data['tipoError']?.toString() ?? '');

    sheet
        .cell(CellIndex.indexByColumnRow(columnIndex: 5, rowIndex: row))
        .value = TextCellValue(data['descripcionError']?.toString() ?? '');

    sheet
        .cell(CellIndex.indexByColumnRow(columnIndex: 6, rowIndex: row))
        .value = TextCellValue(data['estaActivo']?.toString() ?? '');

    sheet
        .cell(CellIndex.indexByColumnRow(columnIndex: 7, rowIndex: row))
        .value = TextCellValue(data['estadoReporte']?.toString() ?? '');

    sheet
        .cell(CellIndex.indexByColumnRow(columnIndex: 8, rowIndex: row))
        .value = TextCellValue(data['asignadoReporte']?.toString() ?? '');

    sheet
        .cell(CellIndex.indexByColumnRow(columnIndex: 9, rowIndex: row))
        .value = TextCellValue(data['creadoReporte']?.toString() ?? '');

    row++;
  }

  // Guardar archivo
  final bytes = excel.save();
  if (bytes == null) {
    throw Exception("No se pudo generar el archivo Excel");
  }

  if (kIsWeb) {
    // Para web
    final uint8List = Uint8List.fromList(bytes);
    final blob = html.Blob([uint8List],
        'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
    final url = html.Url.createObjectUrlFromBlob(blob);
    final anchor = html.AnchorElement(href: url)
      ..style.display = 'none'
      ..download =
          'reporte_errores_${DateTime.now().millisecondsSinceEpoch}.xlsx';
    html.document.body?.append(anchor);
    anchor.click();
    anchor.remove();
    html.Url.revokeObjectUrl(url);
  } else {
    // Para móvil
    io.Directory? directory;
    if (io.Platform.isAndroid) {
      directory = await getExternalStorageDirectory();
    } else {
      directory = await getApplicationDocumentsDirectory();
    }
    final filePath =
        '${directory!.path}/reporte_errores_${DateTime.now().millisecondsSinceEpoch}.xlsx';
    final file = io.File(filePath);
    await file.writeAsBytes(bytes);
    print('Archivo guardado en: $filePath');
  }
}
