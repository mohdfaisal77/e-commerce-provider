import 'package:ecommerce/custom_widgets/back_btn.dart';
import 'package:ecommerce/custom_widgets/custom_elevated_button.dart';
import 'package:ecommerce/custom_widgets/custom_text_field.dart';
import 'package:ecommerce/custom_widgets/icon__btn.dart';
import 'package:ecommerce/helper/app_color/app_color.dart';
import 'package:ecommerce/helper/app_images/app_images.dart';
import 'package:ecommerce/views/screens/auth/forgot_password_screen.dart';
import 'package:ecommerce/views/screens/home/home_screen.dart';
import 'package:ecommerce/views/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    final TextEditingController passwordController = TextEditingController();
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
              child: Text("Login",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.w700),),
            ),
            const SizedBox(height: 30,),
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
                  CustomTextField(
                      labelText: 'Password',
                      keyboardType: TextInputType.text,
                      controller: passwordController,
                      validator: (value){
                        if(value == null || value.isEmpty || value.length <6){
                          return "Please enter minimum 6 digit password";
                        }
                        return null;
                      }
                  ),
                  SizedBox(height: 10,),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=> ForgotPasswordScreen()));
                    }
                    ,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 14.0,top: 4),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text("Forgot your password "),
                          // SvgPicture.asset(AppImages.forward_arrow)
                          Icon(Icons.arrow_right_alt_sharp,color: AppColor.orangeIconColor,)


                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 14.0,vertical: 20),
                    child: CustomElevatedButton(title: Text('LOGIN',style: TextStyle(color: AppColor.whiteMedium),), buttonColor: AppColor.orangeIconColor, onPressed:() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomeScreen()));
                    } ),
                  )
                ],
              ),
            ),
            SizedBox(height: 100),
            Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                "Or sign up with social account",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  // fontFamily: "MetroPolis",
                  color: Color(0xff222222),
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconBtn(onPressed: () {}, image: AppImages.google_logo),
                SizedBox(width: 15),
                IconBtn(onPressed: () {}, image: AppImages.facebook_logo),
              ],
            ),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
