import 'dart:ui';

class CircularBordersContainer {
  final double width;
  final double height;
  final String outerColor; // Hex or predefined color string
  final String innerColor; // Hex or predefined color string
  final double borderRadius;
  final double padding;
  final double borderWidth;
  final String borderColor; // Hex or predefined color string
  final double boxShadowSpreadRadius;
  final double boxShadowBlurRadius;
  final Offset boxShadowOffset;
  final String boxShadowColor; // Hex or predefined color string

  CircularBordersContainer({
    required this.width,
    required this.height,
    required this.outerColor,
    required this.innerColor,
    this.borderRadius = 40.0,
    this.padding = 3.0,
    this.borderWidth = 1.0,
    required this.borderColor,
    this.boxShadowSpreadRadius = 2.0,
    this.boxShadowBlurRadius = 30.0,
    this.boxShadowOffset = const Offset(-1, -1),
    required this.boxShadowColor,
  });
}
