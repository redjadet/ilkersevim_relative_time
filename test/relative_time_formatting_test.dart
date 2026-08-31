import 'package:ilkersevim_relative_time/ilkersevim_relative_time.dart';
import 'package:test/test.dart';

void main() {
  group('formatRelativeTimeShort', () {
    final DateTime now = DateTime(2026, 6, 23, 12, 0);

    test('returns days when difference is at least one day', () {
      expect(
        formatRelativeTimeShort(
          now.subtract(const Duration(days: 3, hours: 2)),
          now: now,
        ),
        '3d',
      );
    });

    test('returns hours when difference is under one day', () {
      expect(
        formatRelativeTimeShort(
          now.subtract(const Duration(hours: 2, minutes: 10)),
          now: now,
        ),
        '2h',
      );
    });

    test('returns minutes when difference is under one hour', () {
      expect(
        formatRelativeTimeShort(
          now.subtract(const Duration(minutes: 5, seconds: 30)),
          now: now,
        ),
        '5m',
      );
    });

    test('returns now when difference is under one minute', () {
      expect(
        formatRelativeTimeShort(
          now.subtract(const Duration(seconds: 20)),
          now: now,
        ),
        'now',
      );
    });

    test('uses whole-day buckets before hours', () {
      expect(
        formatRelativeTimeShort(
          now.subtract(const Duration(days: 1, hours: 5)),
          now: now,
        ),
        '1d',
      );
    });

    test('returns soon for future timestamps instead of now', () {
      expect(
        formatRelativeTimeShort(now.add(const Duration(hours: 2)), now: now),
        'soon',
      );
    });
  });
}
