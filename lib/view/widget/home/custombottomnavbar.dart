import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pko/view/widget/home/custombottomapppar.dart';

class CustomBottomNavBar extends GetView {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  BottomAppBar(
            shape: CircularNotchedRectangle(),
            notchMargin: 10,
            child: Row(
              children: [
                ...List.generate(controller.listpage.length + 1, (index) {
                  int i = index > 2 ? index - 1 : index;
                  return index == 2
                      ? Spacer()
                      : CustomBottonAppar(
                        active: controller.currentpage == index ? true : false,
                        textbutton:
                            controller.titlebottomappar[i],
                        onPressed: () {
                          controller.changePage(i);
                        },
                        iconData: Icons.home_outlined,
                      );
                }),

               
              ],
            ),
          );
  }
}