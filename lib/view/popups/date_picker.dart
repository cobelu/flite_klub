import 'package:flutter/material.dart';

Route<DateTime> datePickerRoute(
  BuildContext context,
  DateTime? dateTime,
) {
  return DialogRoute<DateTime>(
    context: context,
    builder: (BuildContext context) {
      return DatePickerDialog(
        restorationId: 'date_picker_dialog',
        initialEntryMode: DatePickerEntryMode.calendarOnly,
        initialDate: dateTime ?? DateTime.now(),
        firstDate: DateTime.now().subtract(const Duration(days: 365)),
        lastDate: DateTime.now().add(const Duration(days: 365)),
      );
    },
  );
}
