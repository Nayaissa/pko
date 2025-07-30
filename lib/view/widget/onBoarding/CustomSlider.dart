import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pko/controller/onboarding_controller.dart';
import 'package:pko/data/datasource/static/static.dart';

class CustomSliderOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomSliderOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (value) {
        controller.onPageChange(value);
      },
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Image.asset(
              onboardingList[index].image!,
              height: 200,
              width: 200,
              fit: BoxFit.fill,
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              onboardingList[index].title!,
              textAlign: TextAlign.center,
              style:Theme.of(context).textTheme.displayLarge
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
                padding: const EdgeInsets.all(10),
                width: double.infinity,
                height: 102,
                alignment: Alignment.center,
                child: Text(
                  onboardingList[index].body!,
                  textAlign: TextAlign.center,
                  style:Theme.of(context).textTheme.bodyLarge
                )),
          ],
        ),
      ),
      itemCount: onboardingList.length,
    );
  }
}
