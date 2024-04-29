import 'package:street_eats_vendor/helpers/utils/export.dart';
import 'package:street_eats_vendor/screens/menu/edit_category_screen.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.isFullMenu});
  final bool isFullMenu;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          padding: EdgeInsets.only(
            // top: 10.h,
            // bottom: 10.h,
            right: 5.h,
            left: 5.h,
          ),
          height: 60.h,
          width: Get.width * 0.43,
          decoration: BoxDecoration(
              color: AppColors.grayColor.withOpacity(0.5),
              borderRadius: BorderRadius.circular(10)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Pizza',
                style: AppDecoration.semiBoldStyle(
                    fontFamily: 'Nunito',
                    fontSize: 8.5.h,
                    color: AppColors.blackColor),
              ),
              SizedBox(
                height: Get.height * 0.01,
              ),
              if (isFullMenu)
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomButton(
                      onTap: () => Get.to(() => const EditCategoryScreen()),
                      height: 10.h,
                      width: 120.w,
                      title: 'Edit',
                      fontFamily: 'Nunito',
                      fontsize: 5.h,
                      color: AppColors.whiteColor,
                      gradient: AppColors.gradient,
                    ),
                    20.horizontalSpace,
                    CustomButton(
                      onTap: () {
                        primaryDialogue(context,
                            title: 'Delete Account',
                            message:
                                'Are you sure you want to delete\nthis account?',
                            actionText1: 'Cancel',
                            actionText2: 'Delete',
                            onFirstAction: () => Get.back(),
                            onSecondAction: () => Get.back());
                      },
                      height: 10.h,
                      width: 120.w,
                      title: 'Delete',
                      fontFamily: 'Nunito',
                      fontsize: 5.h,
                      color: AppColors.blackColor,
                      gradient: AppColors.backgroundGradient,
                    ),
                  ],
                ).paddingOnly(bottom: 10)
            ],
          ),
        ),
        Positioned(
          right: 50.w,
          bottom: 50.h,
          child: Image.asset(
            AppAssets.itemOne,
          ),
        ),
      ],
    );
  }
}
