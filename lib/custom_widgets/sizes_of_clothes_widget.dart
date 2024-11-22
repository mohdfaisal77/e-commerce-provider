import 'package:ecommerce/models/sizes_of_clothes.dart';
import 'package:flutter/material.dart';

class SizesOfClothesWidget extends StatelessWidget {
  final SizesOfClothesModel sizesOfClothesModel;
  final String text;

  const SizesOfClothesWidget({
    super.key,
    required this.sizesOfClothesModel,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: sizesOfClothesModel.onTap,

      // Handle onTap
      child: Container(
        width: sizesOfClothesModel.width,
        height: sizesOfClothesModel.height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            sizesOfClothesModel.borderRadius ?? 0,
          ),
          color: _getColor(sizesOfClothesModel.color),
          border: Border.all(
            color: Colors.grey.shade200,
            width: sizesOfClothesModel.borderWidth ?? 1.0,
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }

  Color _getColor(String color) {
    try {
      return Color(int.parse(color.replaceFirst('#', '0xff')));
    } catch (e) {
      return Colors.white;
    }
  }
}
