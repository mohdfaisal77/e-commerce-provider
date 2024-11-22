import 'package:ecommerce/models/CircularBordersContainer.dart';
import 'package:flutter/material.dart';

class CircularBordersContainerWidget extends StatelessWidget {
  final CircularBordersContainer containerModel;

  const CircularBordersContainerWidget({Key? key, required this.containerModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: containerModel.width,
      height: containerModel.height,
      padding: EdgeInsets.all(containerModel.padding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(containerModel.borderRadius),
        color: _colorFromHex(containerModel.outerColor),
        border: Border.all(
          color: _colorFromHex(containerModel.borderColor),
          width: containerModel.borderWidth,
        ),
        boxShadow: [
          BoxShadow(
            color: _colorFromHex(containerModel.boxShadowColor).withOpacity(0.3),
            spreadRadius: containerModel.boxShadowSpreadRadius,
            blurRadius: containerModel.boxShadowBlurRadius,
            offset: containerModel.boxShadowOffset,
          ),
        ],
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(containerModel.borderRadius - 10),
          color: _colorFromHex(containerModel.innerColor),
        ),
      ),
    );
  }

  Color _colorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF$hexColor";
    }
    return Color(int.parse("0x$hexColor"));
  }
}
