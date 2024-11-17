import 'package:ecommerce/helper/app_color/app_color.dart';
import 'package:ecommerce/views/items/home/rating_bar_items.dart';
import 'package:flutter/material.dart';
class ViewAllGridItems extends StatelessWidget {
  final String image;
  const ViewAllGridItems({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
       margin: EdgeInsets.symmetric(horizontal: 8),
      height: 380,
     child: Stack(
       children: [
         Container(
             width: 148,
             height: 182,
             decoration: BoxDecoration(
             image: DecorationImage(
               image: AssetImage(image),
             ),
             borderRadius: BorderRadius.circular(15),
             color: Colors.grey.withOpacity(.2),
           ),
         ),
         Container(
           padding:
           EdgeInsets.symmetric(horizontal: 7, vertical: 2.5),
           margin:
           EdgeInsets.symmetric(horizontal: 7, vertical: 7),
           width: 40,
           height: 24,
           decoration: BoxDecoration(color:AppColor.orangeIconColor,
           borderRadius: BorderRadius.circular(20)
           ),
           child: Text("-20 %",style: TextStyle(
             color: AppColor.whiteMedium
           ),),
         ),
         Positioned(
           bottom: 40,
           right: 2,
           child: Container(
             height: 46,
             width: 46,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(100),
               color: Colors.white,
             ),
             child: Center(
               child: Icon(
                 Icons.favorite_border,
                 color: Color(0xff9B9B9B),
                 size: 25,
               ),
             ),
           ),
         ),
         // SizedBox(height: 12,),
         Positioned(

             bottom: 0,
             left: 0,
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [

RatingStarsItem(),
SizedBox(height: 2,),
Text("Dorothy Perkins",style: TextStyle(color: Colors.grey,fontSize: 11),),
                 SizedBox(height: 2,),
                 Text("Evening Dress",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w500),),
                 RichText(
                   text: TextSpan(
                     text: "15\$",
                     style: TextStyle(
                       color: Color(0xff9C9C9C),
                       fontWeight: FontWeight.w500,
                       fontSize: 18,
                     ),
                     children: [
                       TextSpan(
                         text: "  12\$",
                         style: TextStyle(
                           color: Color(0xffDB3022),
                           fontWeight: FontWeight.w500,
                           fontSize: 18,
                         ),
                       ),
                     ],
                   ),
                 ),
               ],
             )
         ),
       ],
     ),
     // margin,
    );
  }
}
