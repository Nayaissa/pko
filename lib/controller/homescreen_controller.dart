import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pko/view/screen/Home/homepageview.dart';

abstract class HomeScreenController extends GetxController {
  changePage(int currentpage);
}

class HomeScreenControllerImp extends HomeScreenController {
  int currentpage = 0;
  List<Widget> listpage = [
    HomePage(),
    Column(children: [Center(child: Text('Settings'))]),
    Column(children: [Center(child: Text('profile'))]),
    Column(children: [Center(child: Text('Favorite'))]),
  ];
  List titlebottomappar = [
    'home',
    'settings',
        'profile',
    'favoriate',


  ];
  @override
  changePage(int i) {
    currentpage = i;
    update();
  }
}
