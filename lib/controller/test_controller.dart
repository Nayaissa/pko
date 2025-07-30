import 'package:get/get.dart';
import 'package:pko/core/class/statusrequest.dart';
import 'package:pko/core/functons/handlingdata.dart';
import 'package:pko/data/datasource/remote/remote_test.dart';

class TestController extends GetxController {
  TestData testData = TestData(Get.find());
  List data = [];
  late StatusRequest statusRequest;

  getData() async {
    statusRequest = StatusRequest.loading;
    var response = await testData.getAllDta();
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      data.addAll(response['data']);
    }
    update();
  }

  @override
  void onInit() {
    getData();
    super.onInit();
  }
}

// class TestControllerImp extends TestController {}
