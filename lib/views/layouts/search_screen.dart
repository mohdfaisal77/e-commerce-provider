import 'package:ecommerce/custom_widgets/custom_elevated_button.dart';
import 'package:ecommerce/helper/app_color/app_color.dart';
import 'package:ecommerce/views/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FindingResultScreen extends StatelessWidget {
  const FindingResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: const SystemUiOverlayStyle(systemNavigationBarColor: Color(0xffF9F9F9)),
      child: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.search_rounded,
                  size: 40,
                  color: Color(0xffDB3022),
                ),

                 Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 65.0),
                  child: Text(
                    "Finding similar results...",
                    style: TextStyle(
                      color: Color(0xff222222),
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      // fontFamily: "MetroPolis",
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: CustomElevatedButton(
                    title: Text('Seach'),
                    onPressed: () {
                      Future.delayed(Duration(milliseconds: 300), () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                      });
                    }, buttonColor: AppColor.orangeIconColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}