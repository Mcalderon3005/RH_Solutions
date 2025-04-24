import 'package:collection/collection.dart';

enum TipoSolicitudes {
  Vacaciones,
  Dias_sin_Goce,
  Incapacidad,
}

enum StartingDayOfWeek {
  sunday,
  monday,
  tuesday,
  wednesday,
  thursday,
  friday,
  saturday,
}

enum CalendarFormat {
  Mes,
  Semana,
  Dia,
}

extension FFEnumExtensions<T extends Enum> on T {
  String serialize() => name;
}

extension FFEnumListExtensions<T extends Enum> on Iterable<T> {
  T? deserialize(String? value) =>
      firstWhereOrNull((e) => e.serialize() == value);
}

T? deserializeEnum<T>(String? value) {
  switch (T) {
    case (TipoSolicitudes):
      return TipoSolicitudes.values.deserialize(value) as T?;
    case (StartingDayOfWeek):
      return StartingDayOfWeek.values.deserialize(value) as T?;
    case (CalendarFormat):
      return CalendarFormat.values.deserialize(value) as T?;
    default:
      return null;
  }
}
