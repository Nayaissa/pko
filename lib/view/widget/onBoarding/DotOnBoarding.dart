import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:pko/controller/onboarding_controller.dart';
import 'package:pko/core/constant/AppColor.dart';
import 'package:pko/data/datasource/static/static.dart';

class DotOnBoarding extends StatelessWidget {
  const DotOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImp>(
        builder: (contoller) => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                    onboardingList.length,
                    (index) => AnimatedContainer(
                          margin: const EdgeInsets.all(2),
                          duration:const Duration(milliseconds: 900),
                          width: contoller.currentIndex == index ? 20 : 5 ,
                          height: 6,
                          decoration: BoxDecoration(
                            color: AppColor.primaryColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ))
              ],
            ));
  }
}

