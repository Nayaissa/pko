import 'package:get/get.dart';
import 'package:pko/core/constant/routes.dart';

abstract class VerfiyCodeController extends GetxController {
  verfiyCode();
  goToResetPassword();
}

class VerfiyCodeControllerImp extends VerfiyCodeController {
  late String code;

  @override
  verfiyCode() {}

  @override
  goToResetPassword() {
    Get.offNamed(AppRoute.resetPassword);
  }


}
