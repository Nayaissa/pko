class AppLink {
  static const String severNamer = 'http://10.0.2.2/ecommerce';
  static const String test = '$severNamer/';

  // image=================================
      static const String imagebaseurl = 'http://10.0.2.2/ecommerce/upload'
;

    static const String categories = '$imagebaseurl/categories';
        static const String items = '$imagebaseurl/items';


  // ================Auth===================

  static const String signup = '$severNamer/auth/signup.php';
  static const String verfiycodesignup = '$severNamer/auth/verfiycode.php';
  static const String login = '$severNamer/auth/login.php';

  //==========ForgetPassword=================
  static const String checkcode = '$severNamer/auth/checkcode.php';
  static const String verifycode = '$severNamer/auth/verifycode.php';
  static const String resetpassword = '$severNamer/auth/resetpassword.php';
  //=========Home==========================
    static const String home = '$severNamer/home.php';

}
