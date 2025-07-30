import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:pko/controller/auth/signup_controller.dart';
import 'package:pko/core/class/statusrequest.dart';
import 'package:pko/core/constant/AppColor.dart';
import 'package:pko/core/constant/AppImagesAssets.dart';
import 'package:pko/core/functons/alertexitapp.dart';
import 'package:pko/core/functons/vaildinput.dart';
import 'package:pko/view/widget/auth/custombuttonauth.dart';
import 'package:pko/view/widget/auth/customtextbodyauth.dart';
import 'package:pko/view/widget/auth/customtextformauth.dart';
import 'package:pko/view/widget/auth/customtextsignup.dart';
import 'package:pko/view/widget/auth/customtexttiltleauth.dart';

// ignore: camel_case_types
class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => SignUpControllerImp());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColor,
        elevation: 0.0,
        centerTitle: true,

        title: Text(
          'Sign Up',
          style: Theme.of(
            context,
          ).textTheme.bodyLarge!.copyWith(color: Colors.grey),
        ),
      ),
    
      // ignore: deprecated_member_use
      body: WillPopScope(
        onWillPop: AlretExitApp,
        child: GetBuilder<SignUpControllerImp>(
          builder: (controller) {
         return   controller.statusRequest ==StatusRequest.loading ? 
          Center(child:  Lottie.asset(AppImageAssets.loding,repeat: true ,width: 250,height: 200),)
          :   Container(
              padding: EdgeInsets.all(15),
              child: Form(
                key: controller.formstate,
                child: ListView(
                  children: [
                    SizedBox(height: 10),
                    CustomTextTitleAuth(text: 'Welcome Back'),
        
                    SizedBox(height: 20),
                    CustomTextBodyAuth(
                      textBody:
                          'SigIn With Your Email And Password OR Continue With Social Media',
                    ),
        
                    SizedBox(height: 50),
                    CustomTextFormFiled(
                      valid: (val) {
                        return validInput(val!, 5, 100, 'username');
                      },
                      myController: controller.userName,
                      hintText: 'Enter Your Name',
                      labelText: 'UserName',
                      iconData: Icons.person_outline,
                    ),
                    CustomTextFormFiled(
                      valid: (val) {
                        return validInput(val!, 5, 100, 'email');
                      },
                      myController: controller.email,
                      hintText: 'Enter Your Email',
                      labelText: 'Email',
                      iconData: Icons.email_outlined,
                    ),
                    CustomTextFormFiled(
                      valid: (val) {
                        return validInput(val!, 10, 15, 'phoneNumber');
                      },
                      myController: controller.phoneNumber,
                      hintText: 'Enter Your Number',
                      labelText: 'PhoneNumber',
                      iconData: Icons.phone_android_outlined,
                    ),
                    CustomTextFormFiled(
                      valid: (val) {
                        return validInput(val!, 5, 100, 'password');
                      },
                      myController: controller.password,
                      hintText: 'Enter Your Password',
                      labelText: 'Password',
                      iconData: Icons.lock_outline,
                    ),
                    Text(
                      'Forget Password ?',
                      textAlign: TextAlign.end,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    CustomButtonAuth(
                      textButton: 'Sign Up',
                      onPressed: () {
                        controller.SignUp();
                      },
                    ),
                    CustomTextSignUpOrSignIn(
                      textOne: 'Have Any Account ?',
                      textTwo: ' SignIn',
                      onTap: () {
                        controller.goToLogin();
                      },
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
