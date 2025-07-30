import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:pko/core/class/statusrequest.dart';
import 'package:pko/core/constant/routes.dart';
import 'package:pko/core/functons/handlingdata.dart';
import 'package:pko/data/datasource/remote/auth/login_data.dart';

abstract class LoginController extends GetxController {
  login();
  goToSignUp();
  goToForegetPassword();
}

class LoginControllerImp extends LoginController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  late TextEditingController email;
  late TextEditingController password;
  bool? isshowpassword = true;
  StatusRequest? statusRequest;
  LoginData loginData = LoginData(Get.find());
  showpassword() {
    isshowpassword = isshowpassword == true ? false : true;
    update();
  }

  @override
  goToSignUp() {
    Get.offAllNamed(AppRoute.signUp);
  }

  @override
  login() async {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
          print('mmmm');

      var response = await loginData.postData(email.text, password.text);
          print('99');

      statusRequest = handlingData(response);
      if (statusRequest == StatusRequest.success) {
        if (response['status'] == 'success') {
          print('$response:success');
          Get.offNamed(AppRoute.homepage);
        } else {
          Get.defaultDialog(
            title: 'تحذير',

            middleText: 'البريد الإلكتروني أو الرمز غير صحيح',
          );
          statusRequest = StatusRequest.failure;
        }
      }
    } else {
      print('jjjj');
    }
  }

  @override
  void onInit() {
    // FirebaseMessaging.instance.getToken().then((value) {
    //   print(value);
    //   String? token = value;
    // });

    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  goToForegetPassword() {
    Get.toNamed(AppRoute.forgetPassword);
  }
}
