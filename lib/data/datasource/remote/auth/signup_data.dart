import 'package:pko/core/class/crud.dart';
import 'package:pko/view/linkapi.dart';

class SignupData{
 
 Crud crud = Crud();
  SignupData(this.crud);

  postData(String userName,String email ,String password ,String phone) async {
    var response = await crud.postData(AppLink.signup, {
     'username':userName,
     'email':email,
     'password':password,
     'phone':phone,


    });
   return response.fold((l) => l, (r) => r);
  }


}