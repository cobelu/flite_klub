import 'package:flutter/material.dart';

Route<DateTime> timePickerRoute(BuildContext context) {
  return DialogRoute<DateTime>(
    context: context,
    builder: (BuildContext context) {
      DateTime now = DateTime.now();
      int hour = now.hour;
      int minute = now.minute;
      return TimePickerDialog(
        restorationId: 'time_picker_dialog',
        initialEntryMode: TimePickerEntryMode.input,
        initialTime: TimeOfDay(hour: hour, minute: minute),
      );
    },
  );
}
