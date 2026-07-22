import 'package:ilkersevim_relative_time/ilkersevim_relative_time.dart';

void main() {
  final DateTime now = DateTime(2026, 6, 23, 12, 0);
  print(
    formatRelativeTimeShort(
      now.subtract(const Duration(days: 3, hours: 2)),
      now: now,
    ),
  ); // 3d
  print(
    formatRelativeTimeShort(
      now.subtract(const Duration(hours: 2, minutes: 10)),
      now: now,
    ),
  ); // 2h
  print(
    formatRelativeTimeShort(
      now.subtract(const Duration(seconds: 20)),
      now: now,
    ),
  ); // now
}
