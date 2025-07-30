import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/state_manager.dart';
import 'package:pko/controller/home_controller.dart';
import 'package:pko/data/model/categoriesmodel.dart';
import 'package:pko/view/linkapi.dart';

class ListCategories extends GetView<HomeControllerImp> {
  const ListCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
                  height: 100,
                  width: 90,
                  child: ListView.separated(
                    separatorBuilder: (context, index) {
                      return SizedBox(width: 10);
                    },
                    itemCount: controller.categories.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Categories(categoriesModel: CategoriesModel.fromJson(controller.categories[index])); }
                  ),
                );
  }
}

class Categories extends StatelessWidget {
  const Categories({super.key,required this.categoriesModel});
  final CategoriesModel categoriesModel;
  @override
  Widget build(BuildContext context) {
                                print(categoriesModel.categoriesId);

    return Column(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 250, 138, 97),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            height: 70,
                            width: 80,
                            child: SvgPicture.network(
                              color: const Color.fromARGB(255, 228, 71, 14),
                              '${AppLink.categories}/${categoriesModel.categoriesImage}',
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            '${categoriesModel.categoriesName}',
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ],
                      );
                    }
  }
