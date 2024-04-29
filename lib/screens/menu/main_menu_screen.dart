import 'package:street_eats_vendor/controllers/filter_container_controller.dart';
import 'package:street_eats_vendor/helpers/utils/export.dart';
import 'package:street_eats_vendor/helpers/widgets/container_selection_row.dart';
import 'package:street_eats_vendor/helpers/widgets/item_card.dart';
import 'package:street_eats_vendor/screens/menu/add_food_screen.dart';
import 'package:street_eats_vendor/screens/menu/all_category_screen.dart';
import 'package:street_eats_vendor/screens/menu/edit_category_screen.dart';
import 'package:street_eats_vendor/screens/menu/full_menu_screen.dart';
import 'package:street_eats_vendor/screens/menu/item_detail_screen.dart';

import '../../helpers/widgets/category_card.dart';

class MainMenuScreen extends StatefulWidget {
  const MainMenuScreen({super.key});

  @override
  State<MainMenuScreen> createState() => _MainMenuScreenState();
}

class _MainMenuScreenState extends State<MainMenuScreen> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<FilterContainerController>(
      builder: (controller) {
        return Container(
          decoration:
              const BoxDecoration(gradient: AppColors.backgroundGradient),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              leading: GestureDetector(
                onTap: () => Get.back(),
                child: const Icon(Icons.keyboard_backspace_rounded),
              ),
              actions: [
                GestureDetector(
                  onTap: () {
                    controller.filterIndex == 0
                        ? Get.to(() => const AddFoodScreen())
                        : Get.to(() => const EditCategoryScreen());
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                        color: AppColors.themeColor, shape: BoxShape.circle),
                    child: Icon(
                      Icons.add,
                      size: 10.h,
                      color: Colors.white,
                    ),
                  ).paddingOnly(right: 45.w),
                )
              ],
            ),
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ContainerSelectionRow(
                        containerTexts: const ['Menu', 'Categories'],
                        padding: 28.5.h,
                        selectedColor: AppColors.purpleColor,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: Get.height * 0.02,
                      ),
                      ContainerSelectionRow(
                        containerTexts: const [
                          'Popular',
                          'BBQ',
                          'Sandwich',
                          'Shawarma',
                          'Chinese'
                        ],
                        padding: 7.h,
                        selectedColor: AppColors.themeColor,
                      ),
                      SizedBox(
                        height: Get.height * 0.02,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Popular Dishes',
                            style: AppDecoration.semiBoldStyle(
                                fontFamily: 'Nunito',
                                fontSize: 8.5.h,
                                color: AppColors.blackColor),
                          ),
                          GestureDetector(
                            onTap: () => Get.to(() => const FullMenuScreen()),
                            child: Text(
                              'View All',
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontFamily: 'Nunito',
                                  fontSize: 7.h,
                                  color: AppColors.blackColor),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: Get.height * 0.1,
                      ),
                      SizedBox(
                        height: Get.height,
                        child: GridView.builder(
                          physics: const ClampingScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: 4,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  crossAxisSpacing: 5.w,
                                  mainAxisSpacing: 40.h),
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () =>
                                  Get.to(() => const ItemDetailScreen()),
                              child: const ItemCard(
                                isFullMenu: false,
                              ),
                            );
                          },
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: Get.height * 0.02,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Categories',
                            style: AppDecoration.semiBoldStyle(
                                fontFamily: 'Nunito',
                                fontSize: 8.5.h,
                                color: AppColors.blackColor),
                          ),
                          GestureDetector(
                            onTap: () =>
                                Get.to(() => const AllCategoryScreen()),
                            child: Text(
                              'View All',
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontFamily: 'Nunito',
                                  fontSize: 7.h,
                                  color: AppColors.blackColor),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: Get.height * 0.1,
                      ),
                      SizedBox(
                        height: Get.height,
                        child: GridView.builder(
                          physics: const ClampingScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: 4,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  crossAxisSpacing: 5.w,
                                  mainAxisSpacing: 15.h),
                          itemBuilder: (context, index) {
                            return const CategoryCard(
                              isFullMenu: false,
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ],
              ).paddingAll(20),
            ),
          ),
        );
      },
    );
  }
}
