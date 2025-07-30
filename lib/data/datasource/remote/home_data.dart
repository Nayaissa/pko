import 'package:pko/core/class/crud.dart';
import 'package:pko/view/linkapi.dart';

class HomeData {
  Crud crud = Crud();
  HomeData(this.crud);

  getData() async {
    var response = await crud.postData(AppLink.home, {});
   return response.fold((l) => l, (r) => r);
  }
}
