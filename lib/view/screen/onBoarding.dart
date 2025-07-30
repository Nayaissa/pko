import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pko/controller/onboarding_controller.dart';
import 'package:pko/view/widget/onBoarding/CustomButton.dart';
import 'package:pko/view/widget/onBoarding/CustomSlider.dart';
import 'package:pko/view/widget/onBoarding/DotOnBoarding.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return const SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: CustomSliderOnBoarding(),
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                DotOnBoarding(),
                Spacer(),
                CustomButtonOnBoarding(),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
