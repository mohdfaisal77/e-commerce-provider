import 'package:ecommerce/custom_widgets/custom_elevated_button.dart';
import 'package:ecommerce/helper/app_color/app_color.dart';
import 'package:ecommerce/helper/app_images/app_images.dart';
import 'package:ecommerce/views/layouts/visual_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class HomeLayoutHeader extends StatelessWidget {
  const HomeLayoutHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        
        Container(
          width: double.infinity,
          height: 540,
child: Image(
  image:AssetImage('assets/images/common/images/big_banner_home.png')
),
        ),
    Container(
    width: double.infinity,
    height: 520,
    decoration: BoxDecoration(
    gradient: LinearGradient(
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
    colors: [
    Colors.black.withOpacity(0.5),
    Colors.transparent,
    ],
    ),
    ),
    child: Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 20),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.end,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Text(
    "Fashion sale",
    style: TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w700,
    fontSize: 40,
    ),
    ),
      SizedBox(
        width: 120,
        height: 40,
        child: CustomElevatedButton(title: Text('Check',style: TextStyle(color:AppColor.whiteMedium),), buttonColor: AppColor.orangeIconColor, onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>VisualSearch()));
        },
        ),
      ),

    ],
    ),
    ),
    ),
    ],
    );
  }
}