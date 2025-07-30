import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pko/core/constant/routes.dart';
import 'package:pko/core/localization/localChange.dart';
import 'package:pko/view/widget/Language/Custombuttonlang.dart';

class LanguagePage extends GetView<LocalController> {
  const LanguagePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('1'.tr, style: Theme.of(context).textTheme.displayLarge),
            SizedBox(height: 15),
            CustomButttonLanguage(
              textbutton: 'Arabic',
              onPressed: () {
                controller.changeLange('ar');
                Get.offNamed(AppRoute.onBoarding);
              },
            ),
            SizedBox(height: 10),

            CustomButttonLanguage(textbutton: 'English', onPressed: () {
                controller.changeLange('en');
                Get.offNamed(AppRoute.onBoarding);
              },),
          ],
        ),
      ),
    );
  }
}
