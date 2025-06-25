import 'package:flutter/material.dart';
import 'package:flex_color_picker/flex_color_picker.dart';

extension HexColorExtension on Color {
  /// Returns the color as a hex string in Flutter's standard format.
  ///
  /// - With `includeAlpha = true`: returns `'0xffAARRGGBB'`.
  /// - With `includeAlpha = false`: returns `'0xffRRGGBB'` (assumes full opacity).
  String toHex({bool includeAlpha = false}) {
    final colorCode = ColorTools.colorCode(this); // → AARRGGBB
    final hex = includeAlpha ? colorCode : colorCode.substring(2); // remove AA
    return '0xff$hex'.toLowerCase(); // Flutter prefers lowercase `0xff`
  }

  /// Creates a [Color] from a hex string.
  ///
  /// Accepts hex strings like `0xAARRGGBB`, `0xRRGGBB`, `AARRGGBB`, or `RRGGBB`.
  static Color fromHex(String hexString) {
    String hex = hexString
        .toUpperCase()
        .replaceAll('0X', '')
        .replaceAll('#', '');

    if (hex.length == 6) {
      hex = 'FF$hex'; // Default full opacity
    } else if (hex.length != 8) {
      throw FormatException('Hex color must be 6 or 8 characters long.');
    }

    return Color(int.parse(hex, radix: 16));
  }
}
