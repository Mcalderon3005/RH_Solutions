import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/auth/firebase_auth/auth_util.dart';

String returnProfileGreeting(DateTime timestamp) {
  // return "morning" if it is morning, "afternoon" if afternoon and "night" if it is night
  var hour = timestamp.hour;
  if (hour >= 0 && hour < 12) {
    return "Good morning,";
  } else if (hour >= 12 && hour < 17) {
    return "Good afternoon,";
  } else {
    return "Goodnight,";
  }
}

List<HorariosRecord>? horariosRecord(
  List<HorariosRecord> horarios,
  int index,
  bool order,
) {
  // sort list of horarios based on InicioHorario, FinHorario y Usuario
  horarios.sort((a, b) {
    int comparison;
    switch (index) {
      case 0: // Sort by HoraInicio
        comparison = a.horaInicio!.compareTo(b.horaInicio!);
        break;
      case 1: // Sort by HoraFinal
        comparison = a.horaFinal!.compareTo(b.horaFinal!);
        break;
      case 2: // Sort by Usuario
        comparison = a.usuario.compareTo(b.usuario);
        break;
      default:
        comparison = 0;
    }
    return order ? comparison : -comparison;
  });
  return horarios;
}

List<ReunionesRecord>? reunionesRecord(
  List<ReunionesRecord> horarios,
  int index,
  bool order,
) {
  // sort list of reuniones based on nombreCreador, fechaCreacion, fechaReunion
  horarios.sort((a, b) {
    int comparison;
    switch (index) {
      case 0: // Sort by nombreCreador
        comparison = a.nombreCreador.compareTo(b.nombreCreador);
        break;
      case 1: // Sort by fechaCreacion
        comparison = a.fechaCreacion!.compareTo(b.fechaCreacion!);
        break;
      case 3: // Sort by fechaReunion
        comparison = a.fechaReunion!.compareTo(b.fechaReunion!);
        break;
      default:
        comparison = 0;
    }
    return order ? comparison : -comparison;
  });
  return horarios;
}

List<ReunionesRecord>? reunionesRecordAdmin(
  List<ReunionesRecord> reuniones,
  int index,
  bool order,
) {
  // sort list of reuniones based on nombreCreador, fechaCreacion, fechaReunion
  reuniones.sort((a, b) {
    int comparison;
    switch (index) {
      case 0: // Sort by nombreCreador
        comparison = a.nombreCreador.compareTo(b.nombreCreador);
        break;
      case 1: // Sort by fechaCreacion
        comparison = a.fechaCreacion!.compareTo(b.fechaCreacion!);
        break;
      case 2: // Sort by fechaReunion
        comparison = a.fechaReunion!.compareTo(b.fechaReunion!);
        break;
      default:
        comparison = 0;
    }
    return order ? comparison : -comparison;
  });
  return reuniones;
}

List<UsuarioCreacionRecord>? usuarioCreacionRecord(
  List<UsuarioCreacionRecord> usuarioCreacion,
  int index,
  bool order,
) {
  // // sort list of usuarioCreacion based on usuarioCreador, nuevoUsuario, fechaCreacion
  usuarioCreacion.sort((a, b) {
    int comparison = 0;

    if (index == 0) {
      comparison = a.usuarioCreador.compareTo(b.usuarioCreador);
    } else if (index == 1) {
      comparison = a.nuevoUsuario.compareTo(b.nuevoUsuario);
    } else if (index == 2) {
      comparison =
          a.fechaCreacion?.compareTo(b.fechaCreacion ?? DateTime.now()) ?? 0;
    }

    return order ? comparison : -comparison;
  });

  return usuarioCreacion;
}

int? calculateVacations(DateTime hireDate) {
  final DateTime now = DateTime.now();
  int yearDiff = now.year - hireDate.year;
  int monthDiff = now.month - hireDate.month;
  int totalMonths = yearDiff * 12 + monthDiff;
  // Si el día de hoy aún no llegó al día de contratación, restamos 1 mes.
  if (now.day < hireDate.day) {
    totalMonths--;
  }
  return totalMonths < 0 ? 0 : totalMonths;
}

int? calcularVacacionesTotales(
  int? vacacionesUsadas,
  int? vacacionesDisponibles,
  int? vacacionesAdicionales,
) {
  if (vacacionesUsadas == null || vacacionesDisponibles == null) {
    return null;
  }
  return vacacionesDisponibles - vacacionesUsadas + vacacionesAdicionales!;
}
