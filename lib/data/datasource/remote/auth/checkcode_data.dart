import 'package:pko/core/class/crud.dart';
import 'package:pko/view/linkapi.dart';

class CheckCode {
  Crud crud;
  CheckCode(this.crud);
  postData(String email) async {
    var response = await crud.postData(AppLink.login, {
      'email': email,
    });
    return response.fold((l) => l, (r) => r);
  }
}

