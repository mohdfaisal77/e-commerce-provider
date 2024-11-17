import 'package:ecommerce/views/items/home/home_layout_header.dart';
import 'package:ecommerce/views/items/home/home_layout_latest_item.dart';
import 'package:ecommerce/views/items/home/list_tile_item.dart';
import 'package:ecommerce/views/screens/home/view_all_home_screen.dart';
import 'package:flutter/material.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    var img = [
      "assets/images/utils/home_img.png",
      "assets/images/utils/home_img.png",
      "assets/images/utils/home_img.png",
      "assets/images/utils/home_img.png",
    ];
    return SingleChildScrollView(
      child: Column(
        children: [
          HomeLayoutHeader(),
          ListTileItem(
            title: "New",
            subtitle: "You've never seen before it!",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ViewAllHomeScreen(),
                ),
              );
            },
          ),
          SizedBox(height: 10),
          SizedBox(
            height: 320,
            child: ListView.builder(
              itemCount: img.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) {
                return HomeLayoutLatestItem(
                  image: img[index],
                );
              },
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}


