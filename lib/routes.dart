import 'package:get/get.dart';
import 'package:pko/core/constant/routes.dart';
import 'package:pko/core/middleware/mymiddleware.dart';
import 'package:pko/view/screen/Home/homepageview.dart';
import 'package:pko/view/screen/auth/forgetpassword.dart';
import 'package:pko/view/screen/auth/login.dart';
import 'package:pko/view/screen/auth/resetpassword.dart';
import 'package:pko/view/screen/auth/signup.dart';
import 'package:pko/view/screen/auth/successresetpassword.dart';
import 'package:pko/view/screen/auth/successsignup.dart';
import 'package:pko/view/screen/auth/verfiycode.dart';
import 'package:pko/view/screen/auth/verfiycodesignup.dart';
import 'package:pko/view/screen/homescreen.dart';
import 'package:pko/view/screen/language.dart';
import 'package:pko/view/screen/onBoarding.dart';

List<GetPage<dynamic>>? getPages = [
  // intro.....
  GetPage(name: '/', page: () => LanguagePage(), middlewares: [MyMiddleWare()]),
// Auth
  GetPage(name: AppRoute.login, page: () => Login()),
  GetPage(name: AppRoute.signUp, page: () => SignUp()),
  GetPage(name: AppRoute.forgetPassword, page: () => ForgetPassword()),
  GetPage(name: AppRoute.verfiyCode, page: () => VerfiyCode()),
  GetPage(name: AppRoute.verfiyCodeSignUp, page: () => VerfiyCodeSignUp()),

  GetPage(name: AppRoute.resetPassword, page: () => ResetPassword()),
  GetPage(name: AppRoute.successReset, page: () => SuccessResetPassword()),
  GetPage(name: AppRoute.successSignUp, page: () => SuccessSignUp()),
  GetPage(name: AppRoute.onBoarding, page: () => OnBoarding()),
  //Home 
    GetPage(name: AppRoute.homepage, page: () => HomeScreen()),



];
// Map<String, Widget Function(BuildContext)> routes = {
//   //onBoarding
//   AppRoute.onBoarding: (context) => OnBoarding(),
//   //Auth
//   AppRoute.login: (context) => Login(),
//   AppRoute.signUp: (context) => SignUp(),
//   AppRoute.forgetPassword: (context) => ForgetPassword(),
//   AppRoute.verfiyCode: (context) => VerfiyCode(),
//   // ignore: equal_keys_in_map
//   AppRoute.resetPassword: (context) => ResetPassword(),
//   AppRoute.successReset: (context) => SuccessResetPassword(),
//   AppRoute.successSignUp: (context) => SuccessSignUp(),
// };
