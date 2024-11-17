import 'package:ecommerce/views/layouts/visual_search_taking_photo.dart';
import 'package:flutter/material.dart';
class CustomElevatedButton extends StatelessWidget {
  final Text title;
  final Color buttonColor;
  final VoidCallback onPressed;
  const CustomElevatedButton({super.key, required this.title, required this.buttonColor,required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: double.maxFinite,
      decoration: BoxDecoration(
        // color: Colors.deepOrange,

      ),
      child:
      ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: buttonColor, // Set the background color
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25), // Optional: rounded corners
            ),
          ),
          onPressed: onPressed,
            child: title),
    );
  }
}
