
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pko/controller/auth/forgetpassword/checkemail_controller.dart';
import 'package:pko/core/constant/AppColor.dart';
import 'package:pko/view/widget/auth/custombuttonauth.dart';
import 'package:pko/view/widget/auth/customtextbodyauth.dart';
import 'package:pko/view/widget/auth/customtextformauth.dart';
import 'package:pko/view/widget/auth/customtexttiltleauth.dart';

class CheckEmail extends StatelessWidget {
  const CheckEmail({super.key});

  @override
  Widget build(BuildContext context) {
    CheckEmailControllerImp controller =
        Get.put(CheckEmailControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundColor,
        elevation: 0.0,
        title: Text('27'.tr,
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: AppColor.grey)),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ListView(children: [
          const SizedBox(height: 20),
            CustomTextTitleAuth(text: 'Check Email'),
          const SizedBox(height: 10),
            CustomTextBodyAuth(
              textBody:
                 'Enter Your Email To Check ' ),
          const SizedBox(height: 15),
           CustomTextFormFiled(
              myController: controller.email,
              hintText: 'Enter Your Email',
              labelText: 'Email',
              iconData: Icons.email_outlined,
              
            ),
          CustomButtonAuth(textButton:'Send', onPressed: () {
            // controller.goToSuccessSignUp() ; 
          }),
          const SizedBox(height: 40),
        ]),
      ),
    );
  }
}


 