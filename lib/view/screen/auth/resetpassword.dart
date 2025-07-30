import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pko/controller/auth/forgetpassword/resertpassword_controller.dart';
import 'package:pko/core/constant/AppColor.dart';
import 'package:pko/view/widget/auth/custombuttonauth.dart';
import 'package:pko/view/widget/auth/customtextbodyauth.dart';
import 'package:pko/view/widget/auth/customtextformauth.dart';
import 'package:pko/view/widget/auth/customtexttiltleauth.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    ResetPasswordControllerImp controller = Get.put(ResetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColor,
        elevation: 0.0,
        centerTitle: true,

        title: Text(
          'Reset Passsord',
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
            CustomTextTitleAuth(text: 'New Password'),

            SizedBox(height: 20),
            CustomTextBodyAuth(
              textBody:
                  'Please Enter new Password ',
            ),

            SizedBox(height: 50),
            CustomTextFormFiled(
              myController: controller.password,
              hintText: 'Enter Your new password',
              labelText: 'password',
              iconData: Icons.lock_outline,
              
            ),
            CustomTextFormFiled(
              myController: controller.password,
              hintText: ' Re Enter Your new password',
              labelText: 'password',
              iconData: Icons.lock_outline,
              
            ),
           
         
            CustomButtonAuth(textButton: 'save', onPressed: () {}),
          
          ],
        ),
      ),
    );
  }
}
