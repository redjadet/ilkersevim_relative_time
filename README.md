# ilkersevim_relative_time

Short relative-time labels for chat-style timestamps (`3d`, `2h`, `5m`, `now`).
Dependency-free beyond the Dart SDK.

## Why use this package?

- Keep compact timestamps consistent across chat, activity, and feed views.
- Avoid adding a localization or date-formatting dependency for four short
  relative labels.
- Inject `now` for deterministic tests and server-aligned clocks.

License: [Apache-2.0](LICENSE). Issues:
[github.com/redjadet/ilkersevim_relative_time/issues](https://github.com/redjadet/ilkersevim_relative_time/issues).

## Installation

```yaml
dependencies:
  ilkersevim_relative_time: ^0.1.2
```

Requires Dart `>=3.12.0`.

## Usage

```dart
import 'package:ilkersevim_relative_time/ilkersevim_relative_time.dart';

final String label = formatRelativeTimeShort(messageTime);
// or with a fixed reference:
final String fixed = formatRelativeTimeShort(messageTime, now: DateTime.now());
```

## API

- `formatRelativeTimeShort(DateTime time, {DateTime? now})` → `String`
