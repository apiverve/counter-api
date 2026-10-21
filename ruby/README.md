# Cloud Counter API - Ruby Gem

Cloud Counter stores and updates persistent numeric counters by ID without needing a database. It tracks increments, decrements, and custom values while returning timestamps and number properties like parity and prime status.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_counter'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_counter
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_counter'

# Initialize the client
client = APIVerve::Counter::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({ id: "test_counter" })

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ id: "test_counter" })
  puts response["data"]
rescue APIVerve::Counter::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Counter::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Counter::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
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

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/counter?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/counter?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/counter?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
