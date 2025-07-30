import 'package:get/get.dart';
import 'package:pko/core/class/statusrequest.dart';
import 'package:pko/core/functons/handlingdata.dart';
import 'package:pko/core/services/services.dart';
import 'package:pko/data/datasource/remote/home_data.dart';

abstract class HomeController extends GetxController {
  getData();
}

class HomeControllerImp extends HomeController {
  MyServices myServices = Get.find();
  HomeData homeData = HomeData(Get.find());
  StatusRequest? statusRequest;
  List data = [];
  List categories = [];
  List items = [];
  getData() async {
    statusRequest = StatusRequest.loading;
    update();

    var response = await homeData.getData();

    statusRequest = handlingData(response);
    if (statusRequest == StatusRequest.success) {
      if (response['status'] == 'success') {
        print('$response:success');
        categories.addAll(response['categories']['data']);
        items.addAll(response['items']['data']);

        print('kkkkkk:success');
      } else {
        Get.defaultDialog(
          title: 'warinig',
          middleText: ' email are not correct or not found',
        );
        statusRequest = StatusRequest.failure;
      }
    } else {
      print('failure');
    }
  }

  //==============
  getItems() async {
    statusRequest = StatusRequest.loading;
    update();

    var response = await homeData.getData();

    statusRequest = handlingData(response);
    if (statusRequest == StatusRequest.success) {
      if (response['status'] == 'success') {
        print('$response:success');
        categories.addAll(response['categories']['data']);

        print('kkkkkk:success');
      } else {
        Get.defaultDialog(
          title: 'warinig',
          middleText: ' email are not correct or not found',
        );
        statusRequest = StatusRequest.failure;
      }
    } else {
      print('failure');
    }
  }

  @override
  void onInit() {
    getData();
    super.onInit();
  }

  @override
  void dispose() {
    super.dispose();
  }
}
