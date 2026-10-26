# Cloud Counter API - Dart/Flutter Client

Cloud Counter stores and updates persistent numeric counters by ID without needing a database. It tracks increments, decrements, and custom values while returning timestamps and number properties like parity and prime status.

[![pub package](https://img.shields.io/pub/v/apiverve_counter.svg)](https://pub.dev/packages/apiverve_counter)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Cloud Counter API](https://apiverve.com/marketplace/counter?utm_source=dart&utm_medium=referral&utm_content=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_counter: ^1.2.3
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
    "created": "2024-04-26T22:09:46.000Z",
    "id": "test_counter",
    "lastAction": "get",
    "lastRead": "2025-12-16T22:21:45.000Z",
    "lastUpdated": "2024-04-26T22:09:46.000Z",
    "numberOfDigits": 1,
    "ordinal": "zeroth",
    "value": 0,
    "words": "zero",
    "isEven": true,
    "isNegative": false,
    "isZero": true,
    "isPrime": false
  }
}
```

## API Reference

- **API Home:** [Cloud Counter API](https://apiverve.com/marketplace/counter?utm_source=dart&utm_medium=referral&utm_content=readme)
- **Documentation:** [docs.apiverve.com/ref/counter](https://docs.apiverve.com/ref/counter?utm_source=dart&utm_medium=referral&utm_content=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme)
