import 'package:ecommerce/bottom_sheet.dart';
import 'package:ecommerce/providers/auth_provider.dart';
import 'package:ecommerce/providers/home_provider.dart';
import 'package:ecommerce/providers/slider_povider.dart';
import 'package:ecommerce/views/screens/home/home_screen.dart';
import 'package:ecommerce/views/screens/profile/profile_screen.dart';
import 'package:ecommerce/views/screens/shop/view_all_categories_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
//5th August 2024 - July 2026
void main() {
  runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => AuthProvider()),
          ChangeNotifierProvider(create: (context) => HomeProvider()),
          ChangeNotifierProvider(create: (context) => SliderProvider())
          // ChangeNotifierProvider(create: (context) => ShopProvider()),
        ],
        child: const MyApp(),
      ),
  );
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ProfileScreen(),
    );
  }
}




