# ilkersevim_relative_time

Short relative-time labels for chat-style timestamps (`3d`, `2h`, `5m`, `now`,
`soon`). Dependency-free beyond the Dart SDK.

## Why use this package?

- Keep compact timestamps consistent across chat, activity, and feed views.
- Avoid adding a localization or date-formatting dependency for short relative
  labels.
- Inject `now` for deterministic tests and server-aligned clocks.

License: [Apache-2.0](LICENSE). Issues:
[github.com/redjadet/ilkersevim_relative_time/issues](https://github.com/redjadet/ilkersevim_relative_time/issues).

## Installation

```yaml
dependencies:
  ilkersevim_relative_time: ^0.1.5
```

Requires Dart `>=3.13.0`.

## Usage

```dart
import 'package:ilkersevim_relative_time/ilkersevim_relative_time.dart';

final String label = formatRelativeTimeShort(messageTime);

// Deterministic tests or server-aligned clocks:
final String fixed = formatRelativeTimeShort(
  messageTime,
  now: DateTime.utc(2026, 6, 23, 12),
);
```

## Label rules

| Condition (relative to `now`) | Label |
| --- | --- |
| Time is in the future | `soon` |
| At least 1 day ago | `{n}d` (whole days) |
| Under 1 day, at least 1 hour ago | `{n}h` (whole hours) |
| Under 1 hour, at least 1 minute ago | `{n}m` (whole minutes) |
| Under 1 minute ago | `now` |

Examples with `now = 2026-06-23 12:00`:

```dart
formatRelativeTimeShort(DateTime(2026, 6, 20, 10), now: now); // 3d
formatRelativeTimeShort(DateTime(2026, 6, 23, 9, 30), now: now); // 2h
formatRelativeTimeShort(DateTime(2026, 6, 23, 11, 55), now: now); // 5m
formatRelativeTimeShort(DateTime(2026, 6, 23, 11, 59, 40), now: now); // now
formatRelativeTimeShort(DateTime(2026, 6, 23, 14), now: now); // soon
```

## API

- `formatRelativeTimeShort(DateTime time, {DateTime? now})` → `String`

When `now` is omitted, `DateTime.now()` is used.
