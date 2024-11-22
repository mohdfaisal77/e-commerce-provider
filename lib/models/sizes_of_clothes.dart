import 'dart:ui';


class SizesOfClothesModel {
  final double width;
  final double height;
  final double? borderRadius;
  final double? borderWidth;
  final String color;
  final VoidCallback? onTap; // Add onTap callback

  SizesOfClothesModel({
    required this.width,
    required this.height,
    this.borderRadius,
    this.borderWidth,
    required this.color,
    this.onTap, // Optional onTap callback
  });
}
