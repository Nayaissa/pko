import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pko/controller/home_controller.dart';
import 'package:pko/view/widget/home/customapparhome.dart';
import 'package:pko/view/widget/home/customcard.dart';
import 'package:pko/view/widget/home/customproduct.dart';
import 'package:pko/view/widget/home/listcategories.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeControllerImp());
    return  GetBuilder<HomeControllerImp>(
        builder: (controller) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: ListView(
              children: [
                Customapparhome(
                  title: 'search here',
                  prefixIcon: Icons.search_outlined,
                  onPressed: () {},
                  onPressedsearch: () {
                    
                  },
                ),
               CustomCard(title: 'summer ckeck',subtitle: 'Check discount',),
               ListCategories(),
                SizedBox(height: 10),
                Text(
                  'The most saler',
                  style: Theme.of(context).textTheme.displayLarge!.copyWith(
                    color: const Color.fromARGB(255, 250, 138, 97),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 15),
                 CustomProductMostSeller(),
              ],
            ),
          );
        },
      
    );
  }
}
