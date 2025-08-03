import 'package:app_color_parser/app_color_parser.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Examples of usage
    final color = Colors.deepPurple;

    // Convert Color to hex string
    final hex = color.toHex(includeAlpha: true);
    debugPrint('Hex: $hex'); // e.g., 0xFF673AB7

    // Convert hex string back to Color
    final fromHex = HexColorExtension.fromHex(hex);

    // Use JSON helper (int)
    final intHelper = ColorJsonHelper();
    final intJson = intHelper.toJson(color);
    final fromInt = intHelper.fromJson(intJson);

    // Use JSON helper (hex string)
    final hexHelper = HexColorJsonHelper();
    final hexJson = hexHelper.toJson(color);
    final fromHexJson = hexHelper.fromJson(hexJson);

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Color Parser Example')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Original Color: $color'),
              Text('Hex String: $hex'),
              Text('From Hex: $fromHex'),
              Text('Int JSON: $intJson'),
              Text('From Int JSON: $fromInt'),
              Text('Hex JSON: $hexJson'),
              Text('From Hex JSON: $fromHexJson'),
              const SizedBox(height: 20),
              Container(width: 100, height: 100, color: fromHexJson),
            ],
          ),
        ),
      ),
    );
  }
}
