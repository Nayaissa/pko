import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pko/controller/homescreen_controller.dart';
import 'package:pko/core/constant/AppColor.dart';
import 'package:pko/view/widget/home/custombottomnavbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeScreenControllerImp());
    return GetBuilder<HomeScreenControllerImp>(
      builder: (controller) {
        return Scaffold(
          floatingActionButton: FloatingActionButton(
            backgroundColor: AppColor.primaryColor,
            
            onPressed: () {},
            child: Icon(Icons.shopping_basket_outlined),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: CustomBottomNavBar(),
          body: controller.listpage.elementAt(controller.currentpage),
        );
      },
    );
  }
}
