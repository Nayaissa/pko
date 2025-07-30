import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pko/controller/auth/successsignup_controller.dart';
import 'package:pko/core/constant/AppColor.dart';
import 'package:pko/view/widget/auth/custombuttonauth.dart';
import 'package:pko/view/widget/auth/customtextbodyauth.dart';
import 'package:pko/view/widget/auth/customtexttiltleauth.dart';

class SuccessSignUp extends StatelessWidget {
  const SuccessSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    SuccessSignUpControllerImp controller = Get.put(
      SuccessSignUpControllerImp(),
    );
    return Scaffold(
      appBar: AppBar(title: const Text('Title')),
      body: Container(
        margin: EdgeInsets.all(15),
        child: Column(
          children: [
            CustomTextTitleAuth(text: 'Success SignUp'),
            SizedBox(height: 50),
            Center(
              child: Icon(
                Icons.check_circle_outline,
                size: 200,
                color: AppColor.primaryColor,
              ),
            ),
            CustomTextTitleAuth(text: 'Congratulation'),
            SizedBox(height: 10),
            CustomTextBodyAuth(textBody: 'Success Created Accout'),
            Spacer(),
            CustomButtonAuth(
              textButton: 'Go To Login',
              onPressed: () {
                controller.goToLogin();
              },
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
