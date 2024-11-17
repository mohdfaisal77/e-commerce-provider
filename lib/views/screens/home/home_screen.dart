
import 'package:ecommerce/providers/home_provider.dart';
import 'package:ecommerce/views/layouts/home/home_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});


  @override
  Widget build(BuildContext context) {
    final homeProvider = context.watch<HomeProvider>();
    return AnnotatedRegion(
      value: SystemUiOverlayStyle(
        systemNavigationBarColor: Color(0xffF9F9F9),
        statusBarIconBrightness: Brightness.light,
      ),
      child: Scaffold(
        body:
      IndexedStack(
            index: homeProvider.currentIndex,
            children: [
              HomeLayout(),
              // ShopLayout(),
              // Container(
              //   height: double.maxFinite,
              //   width: double.maxFinite,
              //   color: Colors.grey,
              // ),
              // Container(
              //   height: double.maxFinite,
              //   width: double.maxFinite,
              //   color: Colors.grey,
              // ),
              // Container(
              //   height: double.maxFinite,
              //   width: double.maxFinite,
              //   color: Colors.teal,
              // ),
              // Container(
              //   height: double.maxFinite,
              //   width: double.maxFinite,
              //   color: Colors.yellow,
              // ),
            ],
          ),

        bottomNavigationBar: IndexedStack(
          index: homeProvider.currentIndex,
          children: [
            HomeLayout(),
            // ShopLayout(),

          ],
        ),
      ),
    );
  }
}