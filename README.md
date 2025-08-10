# app_color_parser

`app_color_parser` is a simple and lightweight Dart package for Flutter that provides utilities to convert between `Color` and hex string or integer formats, and also includes tools for easy JSON serialization and deserialization of color values.

## Features

- Convert `Color` objects to and from hex strings (e.g., `#RRGGBB`, `0xAARRGGBB`).
- Convert `Color` objects to and from `int` values (ARGB).
- JSON serialization helpers for both hex and int formats.

## Getting Started

Add the dependency to your `pubspec.yaml`:

```yaml
dependencies:
  app_color_parser: latest_version
```

## Usage

### Convert `Color` to Hex String
```dart
final color = Colors.blue;
final hex = color.toHex(); // e.g., '0xFF2196F3'
```

### Convert Hex String to `Color`
```dart
final color = HexColorExtension.fromHex('0xFF2196F3');
```

### Use JSON Helpers

#### ARGB Int Helper
```dart
final helper = ColorJsonHelper();
final jsonValue = helper.toJson(Colors.red); // e.g., 0xFFFF0000
final color = helper.fromJson(jsonValue);
```

#### Hex String Helper
```dart
final helper = HexColorJsonHelper();
final jsonValue = helper.toJson(Colors.green); // e.g., '0xFF4CAF50'
final color = helper.fromJson(jsonValue);
```

## API Reference

### `HexColorExtension`
- `toHex({bool includeAlpha = false})`: Converts a `Color` to a hex string.
- `fromHex(String hexString)`: Converts a hex string to a `Color`.

### `ColorJsonHelper`
- `toJson(Color? color)`: Converts a `Color` to an `int`.
- `fromJson(int? json)`: Converts an `int` to a `Color`.

### `HexColorJsonHelper`
- `toJson(Color? color)`: Converts a `Color` to a hex string.
- `fromJson(String? json)`: Converts a hex string to a `Color`.

## License

MIT License. See [LICENSE](LICENSE) file for details.

## Contributions

Contributions are welcome! Please open an issue or submit a pull request.
