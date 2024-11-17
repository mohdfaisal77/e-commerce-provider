import 'package:ecommerce/custom_widgets/back_btn.dart';
import 'package:ecommerce/custom_widgets/custom_elevated_button.dart';
import 'package:ecommerce/helper/app_color/app_color.dart';
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
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
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
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Text(
                "Choose Category",
                style: TextStyle(
                  color: Color(0xff9B9B9B),
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),
              ),
            ),
            Expanded(child: ListView.separated(itemBuilder: (_,index){
return ListTile(
  title:Text( 'Hello'),
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
