# Cloud Counter API - Dart/Flutter Client

Counter is a simple tool for incrementing, decrementing, and resetting a cloud counter. It returns the current value of the counter.

[![pub package](https://img.shields.io/pub/v/apiverve_counter.svg)](https://pub.dev/packages/apiverve_counter)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Cloud Counter API](https://apiverve.com/marketplace/counter?utm_source=dart&utm_medium=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_counter: ^1.1.14
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_counter/apiverve_counter.dart';

void main() async {
  final client = CounterClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'id': 'test_counter'
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "created": "2024-04-26 22:09:46",
    "id": "test_counter",
    "lastAction": "get",
    "lastRead": "2025-02-20 21:29:46",
    "lastUpdated": "2024-04-26 22:09:46",
    "numberOfDigits": 1,
    "ordinal": "zeroth",
    "value": 0,
    "words": "zero"
  }
}
```

## API Reference

- **API Home:** [Cloud Counter API](https://apiverve.com/marketplace/counter?utm_source=dart&utm_medium=readme)
- **Documentation:** [docs.apiverve.com/ref/counter](https://docs.apiverve.com/ref/counter?utm_source=dart&utm_medium=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=readme)
