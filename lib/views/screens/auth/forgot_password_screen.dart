import 'package:ecommerce/custom_widgets/back_btn.dart';
import 'package:ecommerce/custom_widgets/custom_elevated_button.dart';
import 'package:ecommerce/custom_widgets/custom_text_field.dart';
import 'package:ecommerce/custom_widgets/icon__btn.dart';
import 'package:ecommerce/helper/app_color/app_color.dart';
import 'package:ecommerce/helper/app_images/app_images.dart';
import 'package:ecommerce/views/screens/home/home_screen.dart';
import 'package:ecommerce/views/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    final TextEditingController emailController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        leading: BackBtn(),
      ),
      body:  SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text("Forgot Password",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.w700),),
            ),
            const SizedBox(height: 30,),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 16.0),
               child: Text("Please, enter your password, you will receive a link to create a new password via email",style: TextStyle(fontSize: 14),),
             ),
SizedBox(height: 10,),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  CustomTextField(
                      labelText: 'Email',controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      validator: (value){
                        if(value == null || value.isEmpty){
                          return "Please enter your email";
                        }
                        return null;
                      }
                  ),
                  SizedBox(height: 10,),

                  SizedBox(height: 30,),
                  Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: CustomElevatedButton(title: Text('SEND',style: TextStyle(color: AppColor.whiteMedium),), buttonColor: AppColor.orangeIconColor, onPressed:() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomeScreen()));
                    } ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
