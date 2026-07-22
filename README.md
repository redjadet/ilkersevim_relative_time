# ilkersevim_relative_time

Short relative-time labels for chat-style timestamps (`3d`, `2h`, `5m`, `now`).
Dependency-free beyond the Dart SDK.

License: [Apache-2.0](LICENSE). Issues:
[github.com/redjadet/ilkersevim_relative_time/issues](https://github.com/redjadet/ilkersevim_relative_time/issues).

## Installation

```yaml
dependencies:
  ilkersevim_relative_time: ^0.1.0
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
