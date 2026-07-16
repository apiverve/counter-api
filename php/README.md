# Cloud Counter API - PHP Package

Counter is a simple tool for incrementing, decrementing, and resetting a cloud counter. It returns the current value of the counter.

## Installation

Install via Composer:

```bash
composer require apiverve/counter
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Counter\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute(['id' => 'test_counter']);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Counter\Client;
use APIVerve\Counter\Exceptions\APIException;
use APIVerve\Counter\Exceptions\ValidationException;

try {
    $response = $client->execute(['id' => 'test_counter']);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
```

## Example Response

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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/counter?utm_source=packagist&utm_medium=readme).

## Support

- Website: [https://apiverve.com/marketplace/counter?utm_source=php&utm_medium=readme](https://apiverve.com/marketplace/counter?utm_source=php&utm_medium=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
