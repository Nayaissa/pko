import 'package:pko/core/class/crud.dart';
import 'package:pko/view/linkapi.dart';

class VerfiyCodeSignUpData{
  
 Crud crud = Crud();
  VerfiyCodeSignUpData(this.crud);

  postData(String email ,String verifycode ,) async {
    var response = await crud.postData(AppLink.verfiycodesignup, {
    
     'email':email,
     'verifycode':verifycode,


    });
   return response.fold((l) => l, (r) => r);
  }
}