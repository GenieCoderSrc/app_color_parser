# Changelog

All notable changes to this project will be documented in this file.

## 0.0.6

### Aug 22, 2025

### ✨ Updated

- Updated Dart sdk to 3.9.0
- Removed flutter_lints Dependency

## 0.0.5+1

### Jun 25, 2025

### Changed

- `toHex()` now returns color strings in Flutter's preferred format using `'0xff$hex'`.
- Integrated `ColorTools.colorCode(Color)` from `flex_color_picker` to produce consistent 8-digit `AARRGGBB` format
  before prefixing.
- Ensures lowercase `0xff` prefix, matching how Flutter represents colors in source code.

## 0.0.5

### Jun 25, 2025

### Changed

- Refactored ColorHexExtension.toHex({bool includeAlpha}) to delegate hex formatting to ColorTools.colorCode(Color) from
  the flex_color_picker package.
- Improved clarity and re-usability by stripping the alpha channel conditionally instead of manually handling
  Color.value.

## 0.0.4

- Added `hex_color_extension` for serializing/deserializing `Color` as hex string.

## 0.0.3

- Added `HexColorJsonParser` for serializing/deserializing `Color` as hex string.

## 0.0.2

- Create Example file.

## 0.0.1

- Added `HexColorExtension` for converting between `Color` and hex strings.
- Added `ColorJsonHelper` for serializing/deserializing `Color` as ARGB integer.
- Added `HexColorJsonHelper` for serializing/deserializing `Color` as hex string.
- Defined `IColorJsonHelper` interface for custom JSON color serialization strategies.
