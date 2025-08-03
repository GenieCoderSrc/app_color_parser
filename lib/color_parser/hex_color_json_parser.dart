import 'package:app_color_parser/app_color_parser.dart';
import 'package:flutter/material.dart';

/// Helper for Color <-> Hex String JSON serialization.
class HexColorJsonParser {
  static String? toJson(Color? color) {
    return color?.toHex(includeAlpha: true);
  }

  static Color? fromJson(String? hexString) {
    if (hexString == null) return null;
    return HexColorExtension.fromHex(hexString);
  }
}
