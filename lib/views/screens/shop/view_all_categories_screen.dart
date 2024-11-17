import 'package:ecommerce/custom_widgets/back_btn.dart';
import 'package:ecommerce/custom_widgets/custom_elevated_button.dart';
import 'package:ecommerce/helper/app_color/app_color.dart';
import 'package:ecommerce/views/items/shop/womens_top.dart';
import 'package:flutter/material.dart';
class ViewAllCategoriesScreen extends StatelessWidget {
  const ViewAllCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var categories=[
      'Tops',
      'Shirts & Blouses',
      'Blazers',
      'Pants'
      'Jeans',
      'Shorts',
      'Skirts'
    ];
    return Scaffold(
      appBar: AppBar(
        elevation: .7,
        shadowColor: Colors.white.withOpacity(.25),
        title: Text(
          'Categories',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
        leading: BackBtn(),
        actions: <Widget>[
          IconButton(onPressed: () {

            Navigator.push(context, MaterialPageRoute(builder: (context)=>WomensTop()));
          }, icon: Icon(Icons.search)),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
        
            // Padding(
            //   padding: const EdgeInsets.all(14.0),
            //   child: CustomElevatedButton(title: Text('VIEW ALL ITEMS',style: TextStyle(color: AppColor.whiteMedium),), buttonColor: AppColor.orangeIconColor, onPressed: (){
            //     Navigator.push(context, MaterialPageRoute(builder: (context)=>ViewAllCategoriesScreen()));
            //   }),
            // ),
            SizedBox(height: 30),


             Padding(padding: EdgeInsets.symmetric(horizontal: 12),
 child:  Align(
   alignment: Alignment.centerLeft,
   child: Text(
     "Choose Category",
     style: TextStyle(
       color: Color(0xff9B9B9B),
       fontWeight: FontWeight.w400,
       fontSize: 16,
     ),
   ),
 ),
             )
,
            Expanded(child: ListView.separated(itemBuilder: (_,index){
return ListTile(
  title: Text(
    categories[index].toString(),
    style: TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 16,
      color: Color(0xff222222),
    ),
  ),
  dense: true,
  onTap: () {},
  contentPadding: EdgeInsets.symmetric(horizontal: 13),
  // minTileHeight: 20,
);
            }, separatorBuilder: (_, index) => Divider(
              color: Color(0xff9B9B9B).withOpacity(.5),
              thickness: 0.4,
            ), itemCount: categories.length))
          ],
        ),
      ),
    );
  }
}
