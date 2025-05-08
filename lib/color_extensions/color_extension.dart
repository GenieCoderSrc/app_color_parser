import 'package:flutter/material.dart';

extension ColorExtension on Color {
  /// Returns a secondary color by shifting the hue of the primary color.
  Color get toSecondaryColor {
    final hsl = HSLColor.fromColor(this);
    // Shift hue by 180 degrees to get a complementary color
    final secondaryHsl = hsl.withHue((hsl.hue + 180) % 360);
    return secondaryHsl.toColor();
  }

  /// Converts a primary light theme color to its corresponding dark theme color.
  Color get darkThemePrimary {
    final hsl = HSLColor.fromColor(this);
    // Reduce lightness to make the color darker
    final darkHsl = hsl.withLightness((hsl.lightness * 0.6).clamp(0.0, 1.0));
    return darkHsl.toColor();
  }
}
