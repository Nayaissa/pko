import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:pko/core/class/statusrequest.dart';
import 'package:pko/core/constant/routes.dart';
import 'package:pko/core/functons/handlingdata.dart';
import 'package:pko/data/datasource/remote/auth/checkcode_data.dart';

abstract class CheckEmailController extends GetxController {
  checkemail();
}

class CheckEmailControllerImp extends CheckEmailController {
  late TextEditingController email;
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  StatusRequest? statusRequest;
  CheckCode checkCode = CheckCode(Get.find());
  checkemail() async {
    if (formstate.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update();

      var response = await checkCode.postData(email.text);

      statusRequest = handlingData(response);
      if (statusRequest == StatusRequest.success) {
        if (response['status'] == 'success') {
          print('$response:success');
          Get.offNamed(AppRoute.verfiyCode);
        } else {
          Get.defaultDialog(
            title: 'warinig',
            middleText: ' email are not correct or not found',
          );
          statusRequest = StatusRequest.failure;
        }
      }
    } else {
      print('failure');
    }
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
