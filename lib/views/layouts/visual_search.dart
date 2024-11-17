import 'package:ecommerce/custom_widgets/back_btn.dart';
import 'package:ecommerce/custom_widgets/custom_elevated_button.dart';
import 'package:ecommerce/custom_widgets/custom_outline_button.dart';
import 'package:ecommerce/helper/app_color/app_color.dart';
import 'package:ecommerce/views/layouts/visual_search_taking_photo.dart';
import 'package:flutter/material.dart';

class VisualSearch extends StatelessWidget {
  const VisualSearch({super.key});

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
      body: Container(
        // Set the background image
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/common/images/visual_search_bg.png'), // Use your image asset here
            fit: BoxFit.cover, // Makes sure the image covers the screen
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 180.0, left: 20, right: 22),
          child: Column(
            children: [
              Text(
                "Search for an outfit by taking a photo or uploading an image",
                style: TextStyle(
                  color: AppColor.whiteMedium,
                  fontWeight: FontWeight.w500,
                  fontSize: 24,
                ),
              ),
              SizedBox(height: 10,),
              CustomElevatedButton(onPressed:(){ Navigator.push(context, MaterialPageRoute(builder: (context)=> VisualSearchTakingPhoto()));},title: Text('TAKE A PHOTO',style: TextStyle(color: AppColor.whiteMedium,fontSize: 14,fontWeight: FontWeight.normal),), buttonColor: Colors.deepOrange,)
           ,SizedBox(height: 10,),
              CustomOutlineButton(title: Text('UPLOAD AN IMAGE',style: TextStyle(color: AppColor.whiteMedium),), buttonBackgroundColor: Colors.transparent)
            ],
          ),
        ),
      ),
    );
  }
}
//backgroundColor: Colors.transparent,
//
//         side: BorderSide(
//           color: theme.colorScheme.primary,
//           width: 2,
//         ),
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(6.w),
//         ),