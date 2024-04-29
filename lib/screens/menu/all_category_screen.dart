import 'package:street_eats_vendor/screens/menu/edit_category_screen.dart';
import 'package:street_eats_vendor/screens/menu/item_detail_screen.dart';
import '../../helpers/utils/export.dart';
import '../../helpers/widgets/category_card.dart';

class AllCategoryScreen extends StatelessWidget {
  const AllCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(gradient: AppColors.backgroundGradient),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          surfaceTintColor: Colors.transparent,
          backgroundColor: Colors.transparent,
          leading: GestureDetector(
            onTap: () => Get.back(),
            child: const Icon(Icons.keyboard_backspace_rounded),
          ),
          actions: [
            GestureDetector(
              onTap: () => Get.to(() => const EditCategoryScreen()),
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
            children: [
              SizedBox(
                height: Get.height * 0.1,
              ),
              SizedBox(
                height: Get.height,
                child: GridView.builder(
                  physics: const ClampingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 6,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 5.w,
                      mainAxisSpacing: 40.h),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () => Get.to(() => const ItemDetailScreen()),
                      child: const CategoryCard(
                        isFullMenu: true,
                      ),
                    );
                  },
                ),
              ),
            ],
          ).paddingAll(20),
        ),
      ),
    );
  }
}
