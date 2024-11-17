import 'package:ecommerce/helper/app_images/app_images.dart';
import 'package:flutter/material.dart';

class BackBtn extends StatelessWidget {
  const BackBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 14.0, bottom: 14.0, right: 14.0),
      child: GestureDetector(
        onTap: (){
          Navigator.pop(context);
        },
        child:
          Image.asset(AppImages().back_btn)

      ),
    );
  }
}
