import 'package:get/get.dart';
import 'package:pko/core/class/statusrequest.dart';
import 'package:pko/core/constant/routes.dart';
import 'package:pko/core/functons/handlingdata.dart';
import 'package:pko/data/datasource/remote/auth/verfiycodesignup_data.dart';

abstract class VerfiyCodeSignUpController extends GetxController {
  verfiyCode( String verificationCode);
 goToSuccessSignUp();
}

class VerfiyCodeSignUpControllerImp extends VerfiyCodeSignUpController {
 // late String verificationCode;
  String? email;
  StatusRequest? statusRequest;

  VerfiyCodeSignUpData verfiyCodeSignUp = VerfiyCodeSignUpData(Get.find());

  @override
 verfiyCode(verificationCode) async {
    statusRequest = StatusRequest.loading;
    update();

    var response = await verfiyCodeSignUp.postData(
      email!,
      verificationCode,
    );

    statusRequest = handlingData(response);
    if (statusRequest == StatusRequest.success) {
      if (response['status'] == 'success') {
        goToSuccessSignUp();
      } else {
        Get.defaultDialog(
          title: 'تحذير',
          middleText: 'البريد الإلكتروني أو الرمز غير صحيح',
        );
        statusRequest = StatusRequest.failure;
      }
    }

    update();
  }

  @override
  void goToSuccessSignUp() {
    Get.offNamed(AppRoute.successSignUp);
  }

  @override
  void onInit() {
    email = Get.arguments['email'];
    super.onInit();
  }
}
