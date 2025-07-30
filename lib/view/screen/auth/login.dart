import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:pko/controller/auth/login_controller.dart';
import 'package:pko/core/class/statusrequest.dart';
import 'package:pko/core/constant/AppColor.dart';
import 'package:pko/core/constant/AppImagesAssets.dart';
import 'package:pko/core/functons/VaildInput.dart';
import 'package:pko/core/functons/alertexitapp.dart';
import 'package:pko/view/widget/auth/CustomImageLogo.dart';
import 'package:pko/view/widget/auth/custombuttonauth.dart';
import 'package:pko/view/widget/auth/customtextbodyauth.dart';
import 'package:pko/view/widget/auth/customtextformauth.dart';
import 'package:pko/view/widget/auth/customtextsignup.dart';
import 'package:pko/view/widget/auth/customtexttiltleauth.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(LoginControllerImp());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColor,
        elevation: 0.0,
        centerTitle: true,

        title: Text(
          'Sign In',
          style: Theme.of(
            context,
          ).textTheme.bodyLarge!.copyWith(color: Colors.grey),
        ),
      ),
      body: WillPopScope(
        onWillPop: AlretExitApp,
        child: GetBuilder<LoginControllerImp>(
          builder: (controller) {
        return    controller.statusRequest == StatusRequest.loading ? 
          Center(child:  Lottie.asset(AppImageAssets.loding,repeat: true ,width: 250,height: 200),)
           :  Container(
              padding: EdgeInsets.all(15),
              child: Form(
                key: controller.formstate,
                child: ListView(
                  children: [
                    CustomImageLogo(),
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
                        return validInput(val!, 5, 100, 'email');
                      },
                      myController: controller.email,
                      hintText: 'Enter Your Email',
                      labelText: 'Email',
                      iconData: Icons.email_outlined,
                    ),
                    GetBuilder<LoginControllerImp>(
                      builder: (controller) {
                        return CustomTextFormFiled(
                          onTap: () {
                            controller.showpassword();
                          },
                          obscureText: controller.isshowpassword,
                          iconprefix:
                              controller.isshowpassword == true
                                  ? Icons.visibility_off_outlined
                                  : Icons.visibility_outlined,
                          valid: (val) {
                            return validInput(val!, 5, 30, 'password');
                          },
                          myController: controller.password,
                          hintText: 'Enter Your Password',
                          labelText: 'Password',
                          iconData: Icons.lock_outline,
                        );
                      },
                    ),
                    InkWell(
                      onTap: () {
                        controller.goToForegetPassword();
                      },
                      child: Text(
                        'Forget Password ?',
                        textAlign: TextAlign.end,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ),
                    CustomButtonAuth(
                      textButton: 'Login',
                      onPressed: () {
                        controller.login();
                      },
                    ),
                    CustomTextSignUpOrSignIn(
                      textOne: 'Dont Have Any Account?',
                      textTwo: 'Sign Up',
                      onTap: () {
                        controller.goToSignUp();
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
