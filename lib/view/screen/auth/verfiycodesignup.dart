import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:pko/controller/auth/verfiycodesignup_controller.dart';
import 'package:pko/core/class/statusrequest.dart';
import 'package:pko/core/constant/AppColor.dart';
import 'package:pko/core/constant/AppImagesAssets.dart';
import 'package:pko/view/widget/auth/customtextbodyauth.dart';
import 'package:pko/view/widget/auth/customtexttiltleauth.dart';

class VerfiyCodeSignUp extends StatelessWidget {
  const VerfiyCodeSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(
      VerfiyCodeSignUpControllerImp(),
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColor,
        elevation: 0.0,
        centerTitle: true,

        title: Text(
          'Verfication Code',
          style: Theme.of(
            context,
          ).textTheme.bodyLarge!.copyWith(color: Colors.grey),
        ),
      ),
      body: GetBuilder<VerfiyCodeSignUpControllerImp>(
        builder: (controller) {
          return controller.statusRequest == StatusRequest.loading
              ? Center(
                child: Lottie.asset(
                  AppImageAssets.loding,
                  repeat: true,
                  width: 250,
                  height: 200,
                ),
              )
              : Container(
                padding: EdgeInsets.all(15),
                child: ListView(
                  children: [
                    SizedBox(height: 10),
                    CustomTextTitleAuth(text: 'Check Code'),

                    SizedBox(height: 20),
                    CustomTextBodyAuth(
                      textBody:
                          'Please Enter The Code Digit Sent to:nayaali900@gmail.com',
                    ),

                    SizedBox(height: 50),

                    OtpTextField(
                      numberOfFields: 5,
                      borderColor: Color(0xFF512DA8),
                      //set to true to show as box or false to show as dash
                      showFieldAsBox: true,
                      //runs when a code is typed in
                      onCodeChanged: (String code) {
                        //handle validation or checks here
                      },
                      //runs when every textfield is filled
                      onSubmit: (String verificationCode) {
                        controller.verfiyCode(verificationCode);
                      }, // end onSubmit
                    ),
                  ],
                ),
              );
        },
      ),
    );
  }
}
