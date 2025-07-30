import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pko/controller/onboarding_controller.dart';
import 'package:pko/core/constant/AppColor.dart';

class CustomButtonOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomButtonOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 40,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      margin: const EdgeInsets.only(bottom: 40),
      decoration: const BoxDecoration(
          color: AppColor.primaryColor,
          borderRadius: BorderRadius.all(Radius.circular(12))),
      child: MaterialButton(
        onPressed: () {
          controller.next();
        },
        child: const Text(
          'Countine',
          style: TextStyle(color: Colors.white, fontSize: 12),
        ),
      ),
    );
  }
}
