import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:pko/core/constant/routes.dart';

abstract class ForgetPasswordController extends GetxController {
  checkEmail();
  goToVerfiyCode();
}

class ForgetPasswordControllerImp extends ForgetPasswordController {
  late TextEditingController email;

  @override
  checkEmail() {
  }

 @override
  goToVerfiyCode() {
        Get.toNamed(AppRoute.verfiyCode);

  }

  @override
  void onInit() {
    email = TextEditingController();
   
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    super.dispose();
  }
  
  
}
