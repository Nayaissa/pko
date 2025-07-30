import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:pko/core/class/statusrequest.dart';
import 'package:pko/core/constant/routes.dart';
import 'package:pko/core/functons/handlingdata.dart';
import 'package:pko/data/datasource/remote/auth/signup_data.dart';

abstract class SignUpController extends GetxController {
  SignUp();
  goToLogin();
  goToVerfiyCodeSignUp();
}

class SignUpControllerImp extends SignUpController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  late TextEditingController email;
  late TextEditingController password;
  late TextEditingController userName;
  late TextEditingController phoneNumber;
  SignupData signupData = SignupData(Get.find());
  List data = [];
  StatusRequest? statusRequest;
  @override
  goToLogin() {
    Get.offNamed(AppRoute.login);
  }

  @override
  SignUp() async {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      print('naya');
      statusRequest = StatusRequest.loading;
      update();
      print('nayjjja');

      var response = await signupData.postData(
        userName.text,
        email.text,
        password.text,
        phoneNumber.text,
      );
      statusRequest = handlingData(response);
      print(response);

      if (StatusRequest.success == statusRequest) {
        print('success');

        // data.addAll(response['data']);
        goToVerfiyCodeSignUp();
      }
      update();
    } else {
      Get.defaultDialog(
        title: 'warning',
        middleText: 'PhoneNumber or email are exists',
      );
    }
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    userName = TextEditingController();
    phoneNumber = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    phoneNumber.dispose();
    userName.dispose();
    super.dispose();
  }

  @override
  goToVerfiyCodeSignUp() {
    Get.offAllNamed(AppRoute.verfiyCodeSignUp,arguments:{
      "email": email.text
    } );
  }
}
