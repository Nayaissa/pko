import 'package:pko/core/class/crud.dart';
import 'package:pko/view/linkapi.dart';

class TestData {
  Crud crud = Crud();
  TestData(this.crud);

  getAllDta() async {
    var response = await crud.postData(AppLink.test, {});
   return response.fold((l) => l, (r) => r);
  }
}
