import 'package:app_color_parser/app_color_parser.dart';
import 'package:flutter/material.dart';

import 'i_color_json_helper.dart';

/// Helper for Color <-> Hex String JSON serialization.
class HexColorJsonHelper implements IColorJsonHelper<String> {
  @override
  String? toJson(Color? color) {
    return color?.toHex(includeAlpha: true); // Color to hex string
  }

  @override
  Color? fromJson(String? hexString) {
    if (hexString == null) return null;
    return HexColorExtension.fromHex(hexString); // Hex string to Color
  }
}
