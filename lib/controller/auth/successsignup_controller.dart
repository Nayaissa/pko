import 'package:get/get.dart';
import 'package:pko/core/constant/routes.dart';

abstract class SuccessSignUpController extends GetxController {
  // successSignUp();
  goToLogin(
  );
}

class SuccessSignUpControllerImp extends SuccessSignUpController {

  

  
  @override
  goToLogin() {
        Get.offNamed(AppRoute.login);

  }
}
