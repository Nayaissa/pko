import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pko/controller/auth/forgetpassword/forgetpassword_controller.dart';
import 'package:pko/core/constant/AppColor.dart';
import 'package:pko/view/widget/auth/custombuttonauth.dart';
import 'package:pko/view/widget/auth/customtextbodyauth.dart';
import 'package:pko/view/widget/auth/customtextformauth.dart';
import 'package:pko/view/widget/auth/customtexttiltleauth.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    ForgetPasswordControllerImp controller = Get.put(
      ForgetPasswordControllerImp(),
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColor,
        elevation: 0.0,
        centerTitle: true,

        title: Text(
          ' Forget Password',
          style: Theme.of(
            context,
          ).textTheme.bodyLarge!.copyWith(color: Colors.grey),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: ListView(
          children: [
            SizedBox(height: 10),
            CustomTextTitleAuth(text: 'Check Email'),

            SizedBox(height: 20),
            CustomTextBodyAuth(
              textBody: 'Please Enter Your Email to Recive Code ',
            ),

            SizedBox(height: 50),
            CustomTextFormFiled(
              myController: controller.email,
              hintText: 'Enter Your Email',
              labelText: 'Email',
              iconData: Icons.email_outlined,
            ),

            CustomButtonAuth(
              textButton: 'check',
              onPressed: () {
                controller.goToVerfiyCode();
              },
            ),
          ],
        ),
      ),
    );
  }
}
