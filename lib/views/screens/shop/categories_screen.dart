import 'package:ecommerce/custom_widgets/back_btn.dart';
import 'package:ecommerce/helper/app_color/app_color.dart';
import 'package:ecommerce/views/layouts/shop/women_category_layout.dart';
import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var categories = ['Women', 'Men', 'Kids'];
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
      body: DefaultTabController(
        initialIndex: 1,
        length: categories.length,
        child: Column(
          children: [
            TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorColor: AppColor.orangeIconColor,
              indicatorWeight: 3.0, // Thickness of the indicator line
              tabs: <Widget>[
                Tab(
                  child: Text(
                    'Women',
                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 16),
                  ),
                ),
                Tab(
                  text: 'Men',
                ),
                Tab(
                  text: 'Kids',
                ),
              ],
            ),
            // TabBarView is placed above the TabBar
            Expanded(
              child: TabBarView(
                children: <Widget>[
                  WomenCategoryLayout(),
                  Center(child: Text("It's rainy here")),
                  Center(child: Text("It's sunny here")),
                ],
              ),
            ),
            // TabBar is placed below the TabBarView

          ],
        ),
      ),
    );
  }
}
