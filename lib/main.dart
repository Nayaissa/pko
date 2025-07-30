import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pko/bindings/initalbindings.dart';
import 'package:pko/core/localization/localChange.dart';
import 'package:pko/core/localization/translation.dart';
import 'package:pko/core/services/services.dart';
import 'package:pko/routes.dart';
import 'package:pko/test.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initalSevices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
  LocalController controller=  Get.put(LocalController());
    return GetMaterialApp(
      translations: MyTrasnslation(),
      debugShowCheckedModeBanner: false,
      locale: controller.language,
      theme: controller.appTheme,
   // home: FaceProductScreen(),
     initialBinding: InitialBinding(),
      getPages: getPages,
    );
  }
}
