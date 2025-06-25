# Changelog

All notable changes to this project will be documented in this file.



## [0.0.5] - 2025-06-25
### Changed
- Refactored ColorHexExtension.toHex({bool includeAlpha}) to delegate hex formatting to ColorTools.colorCode(Color) from the flex_color_picker package.
- Improved clarity and reusability by stripping the alpha channel conditionally instead of manually handling Color.value.


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
