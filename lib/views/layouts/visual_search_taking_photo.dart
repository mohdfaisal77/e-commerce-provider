import 'package:ecommerce/custom_widgets/back_btn.dart';
import 'package:ecommerce/custom_widgets/custom_elevated_button.dart';
import 'package:ecommerce/custom_widgets/custom_outline_button.dart';
import 'package:ecommerce/helper/app_color/app_color.dart';
import 'package:ecommerce/helper/app_images/app_images.dart';
import 'package:ecommerce/views/layouts/crop_the_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class VisualSearchTakingPhoto extends StatelessWidget {
  const VisualSearchTakingPhoto({super.key});

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
          Expanded(child: Container(

            child: Padding(
              padding: const EdgeInsets.only(left: 20.0,right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  
                  Icon(Icons.flash_on,color: Colors.black,),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> CropTheItem()));
                    },
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.deepOrange,
                      borderRadius: BorderRadius.circular(50)
                      ),
                      child: Icon(Icons.camera_alt,color: AppColor.whiteMedium,),
                    ),
                  ),
                  InkWell(
                    child: SvgPicture.asset(AppImages.refresh_icon),
                  )
                ],
              ),
            ),
            ),
          )
        ],
      )
    );
  }
}
//import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MyHomePage(),
//     );
//   }
// }
//
// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("FractionallySizedBox Example"),
//       ),
//       body: Column(
//         children: [
//           // Image section (90% height using FractionallySizedBox)
//           FractionallySizedBox(
//             alignment: Alignment.topCenter,
//             heightFactor: 0.9, // 90% of the screen height
//             child: Container(
//               width: double.infinity,
//               decoration: BoxDecoration(
//                 image: DecorationImage(
//                   image: AssetImage('assets/your_image.jpg'),
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             ),
//           ),
//           // Bottom container with 3 icons
//           Container(
//             height: 70,
//             color: Colors.blueGrey,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 IconButton(
//                   icon: Icon(Icons.home, color: Colors.white),
//                   onPressed: () {},
//                 ),
//                 IconButton(
//                   icon: Icon(Icons.search, color: Colors.white),
//                   onPressed: () {},
//                 ),
//                 IconButton(
//                   icon: Icon(Icons.person, color: Colors.white),
//                   onPressed: () {},
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }