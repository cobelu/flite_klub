import 'package:flite_klub/model/models.dart';

String formatDateTime(DateTime d) {
  return '${d.month}/${d.day}/${d.year} @ ${d.hour}:${d.minute}';
}

String formatAircraft(Aircraft a) {
  return '${a.year} ${a.make} ${a.model}';
}
