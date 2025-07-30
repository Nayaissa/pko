import 'package:get/get.dart';
import 'package:pko/core/constant/routes.dart';

abstract class SuccessResetPaswwordController extends GetxController {
  // successResetOaswword();
  goToLogin();
}

class SuccessResetPaswwordControllerImp extends SuccessResetPaswwordController {

  

  
  @override
  goToLogin() {
        Get.offNamed(AppRoute.login);

  }
}
