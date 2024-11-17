import 'package:ecommerce/custom_widgets/back_btn.dart';
import 'package:ecommerce/custom_widgets/custom_elevated_button.dart';
import 'package:ecommerce/custom_widgets/custom_outline_button.dart';
import 'package:ecommerce/helper/app_color/app_color.dart';
import 'package:ecommerce/helper/app_images/app_images.dart';
import 'package:ecommerce/views/layouts/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CropTheItem extends StatelessWidget {
  const CropTheItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: BackBtn(),
          centerTitle: true,
          automaticallyImplyLeading: false,
          title: Text(
            'Visual Search',
            style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500),
          ),
        ),
        body: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height *0.76,
              width: double.maxFinite,
              // Set the background image
              decoration: BoxDecoration(
                image: DecorationImage(
                  image:  AssetImage(AppImages.visual_search_taking_photo_bg), // Use your image asset here
                  fit: BoxFit.cover, // Makes sure the image covers the screen
                ),
              ),
              // child: null,
            ),
    Expanded(
    child: Container(
    padding: const EdgeInsets.all(22),
    child: InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder:
            (context)=> FindingResultScreen()));
      },
      child: Container(
      width: 50, // Ensure the width and height are equal
      height: 50, // Set height equal to width to maintain the circular shape
      decoration: BoxDecoration(
      color: AppColor.orangeIconColor,
      shape: BoxShape.circle, // Use shape: BoxShape.circle for automatic circular container
      ),
      child: Icon(

      Icons.search,
      color: Colors.white, // Replace with your AppColor.whiteMedium if necessary
      ),
      ),
    ),
    ),
    ),
          ],
        )
    );
  }
}
