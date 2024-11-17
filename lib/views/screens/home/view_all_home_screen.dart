import 'package:ecommerce/helper/app_images/app_images.dart';
import 'package:ecommerce/views/items/home/list_tile_item.dart';
import 'package:ecommerce/views/items/home/view_all_grid_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ViewAllHomeScreen extends StatelessWidget {
  const ViewAllHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var img=[
      "assets/images/utils/view_all_img1.png",
      "assets/images/utils/view_all_img2.png",
      "assets/images/utils/view_all_img1.png",
      "assets/images/utils/view_all_img2.png",
      "assets/images/utils/view_all_img1.png",
      "assets/images/utils/view_all_img2.png",

    ];
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal:10,vertical: 20),
            width: double.maxFinite,
            height: 196,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(AppImages.view_all_home_img))),

              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text('Street Clothes',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 34,color: Colors.white),),
              ),

          ),
          ListTileItem(
              title: 'Sale', subtitle: 'Super Summer sale', onTap: () {}),

          Expanded(child: GridView.builder(
              itemCount: img.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                mainAxisExtent: 260

          ), itemBuilder: (_,int index){
return ViewAllGridItems(image: img[index],);
          }))
        ],
      ),
    );
  }
}
