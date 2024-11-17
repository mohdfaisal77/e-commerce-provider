import 'package:ecommerce/helper/app_color/app_color.dart';
import 'package:flutter/material.dart';
class CustomOutlineButton extends StatelessWidget {
  final Text title;
  final Color buttonBackgroundColor;
  const CustomOutlineButton({super.key, required this.title, required this.buttonBackgroundColor});

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
            elevation: 0,
             shadowColor: Colors.transparent,
             surfaceTintColor: Colors.transparent,
            side: BorderSide(
              color: AppColor.whiteMedium,
              width: 1,
            ),
            backgroundColor: buttonBackgroundColor, // Set the background color
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25), // Optional: rounded corners
            ),
          ),
          onPressed: (){}, child: title),
    );
  }
}
