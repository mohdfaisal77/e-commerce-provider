import 'package:ecommerce/helper/app_color/app_color.dart';
import 'package:ecommerce/helper/app_images/app_images.dart';
import 'package:ecommerce/views/screens/shop/view_all_categories_screen.dart';
import 'package:flutter/material.dart';

class WomenCategoryLayout extends StatelessWidget {
  const WomenCategoryLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.1),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 8),
                width: 342,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColor.orangeIconColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(22.0),
                  child: Column(
                    children: [
                      Text(
                        "Summer Sales",
                        style: TextStyle(
                            color: AppColor.whiteMedium, fontSize: 24),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        "Up to 50% off",
                        style: TextStyle(
                            color: AppColor.whiteMedium,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                )),
            Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ViewAllCategoriesScreen()));
                  },
                  child: Text("View All")),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 16),
              width: 342,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  // Image in the first half of the container

                  // The second half of the container for other content
                  Expanded(
                    child: Container(

                       padding: EdgeInsets.only(right: 80),
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'New',
                          style: TextStyle(fontSize: 18, color: Colors.black,fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 171, // Half the width of the container
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      ),
                    ),
                    child: Image.asset(
                      'assets/images/common/images/women_images/new.png' , // Replace with your image path
                      fit: BoxFit.cover, // Adjust the image to fit the space
                    ),
                  ),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.only(bottom: 16),
              width: 342,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  // Image in the first half of the container

                  // The second half of the container for other content
                  Expanded(
                    child: Container(

                      padding: EdgeInsets.only(right: 80),
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Clothes',
                          style: TextStyle(fontSize: 18, color: Colors.black,fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 171, // Half the width of the container
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      ),
                    ),
                    child: Image.asset(
                      'assets/images/common/images/women_images/clothes.png' , // Replace with your image path
                      fit: BoxFit.cover, // Adjust the image to fit the space
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 16),
              width: 342,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  // Image in the first half of the container

                  // The second half of the container for other content
                  Expanded(
                    child: Container(

                      padding: EdgeInsets.only(right: 80),
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Shoes',
                          style: TextStyle(fontSize: 18, color: Colors.black,fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 171, // Half the width of the container
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      ),
                    ),
                    child: Image.asset(
                      'assets/images/common/images/women_images/shoes.png' , // Replace with your image path
                      fit: BoxFit.cover, // Adjust the image to fit the space
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 16),
              width: 342,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  // Image in the first half of the container

                  // The second half of the container for other content
                  Expanded(
                    child: Container(

                      padding: EdgeInsets.only(right: 30),
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Accesories',
                          style: TextStyle(fontSize: 18, color: Colors.black,fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 171, // Half the width of the container
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      ),
                    ),
                    child: Image.asset(
                      'assets/images/common/images/women_images/accesories.png' , // Replace with your image path
                      fit: BoxFit.cover, // Adjust the image to fit the space
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
