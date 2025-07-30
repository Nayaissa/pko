import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:pko/core/constant/routes.dart';

abstract class ResetPasswordController extends GetxController {
  resetPassword();
  goToSuccess();
}

class ResetPasswordControllerImp extends ResetPasswordController {
  late TextEditingController rePasssword;
  late TextEditingController password;

  @override
  goToSuccess() {
    Get.toNamed(AppRoute.successReset);
  }
@override
  resetPassword() {
    
  }
  @override
  void onInit() {
    rePasssword = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    rePasssword.dispose();
    password.dispose();
    super.dispose();
  }

  
  
}
