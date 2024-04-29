import 'package:street_eats_vendor/helpers/utils/export.dart';
import 'package:street_eats_vendor/screens/menu/edit_menu_screen.dart';

class ItemDetailScreen extends StatelessWidget {
  const ItemDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(gradient: AppColors.backgroundGradient),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          flexibleSpace: Image.asset(
            AppAssets.fullBurger,
            fit: BoxFit.fill,
            height: 120.h,
          ),
          toolbarHeight: 100.h,
          leading: GestureDetector(
            onTap: () => Get.back(),
            child: const Icon(
              Icons.keyboard_backspace_rounded,
              color: Colors.white,
            ).paddingOnly(bottom: 90.h),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Bacon+Cheese\nGreen Burger',
                  style: AppDecoration.semiBoldStyle(
                      fontFamily: 'Nunito',
                      fontSize: 9.h,
                      color: AppColors.blackColor),
                ),
                Text(
                  'Fast Food',
                  style: AppDecoration.mediumStyle(
                      fontFamily: 'Nunito',
                      fontSize: 7.5.h,
                      color: AppColors.blackColor),
                )
              ],
            ),
            10.verticalSpace,
            const Divider(),
            10.verticalSpace,
            Text(
              '\$40.99',
              style: AppDecoration.semiBoldStyle(
                  fontFamily: 'Nunito',
                  fontSize: 9.h,
                  color: AppColors.blackColor),
            ),
            10.verticalSpace,
            const Divider(),
            10.verticalSpace,
            Text(AppString.dummytext2),
            const Spacer(),
            CustomButton(
              onTap: () => Get.off(() => const EditMenuScreen()),
              height: 21.h,
              title: 'Edit Menu',
              fontFamily: 'Nunito',
              fontsize: 8.h,
              color: Colors.white,
              gradient: AppColors.gradient,
            ),
          ],
        ).paddingAll(20),
      ),
    );
  }
}
