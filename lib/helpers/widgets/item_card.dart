import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:street_eats_vendor/helpers/utils/export.dart';

import '../../screens/menu/edit_menu_screen.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({super.key, required this.isFullMenu});
  final bool isFullMenu;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          padding: EdgeInsets.only(
            top: 10.h,
            bottom: 10.h,
            right: 5.h,
            left: 5.h,
          ),
          decoration: BoxDecoration(
              color: AppColors.grayColor.withOpacity(0.5),
              borderRadius: BorderRadius.circular(10)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Cheese Green Burger',
                style: AppDecoration.semiBoldStyle(
                    fontFamily: 'Nunito',
                    fontSize: 6.5.h,
                    color: AppColors.blackColor),
              ),
              Text(
                'Sold 1k | +15%',
                style: AppDecoration.semiBoldStyle(
                    fontFamily: 'Nunito',
                    fontSize: 5.5.h,
                    color: AppColors.blackColor),
              ),
              EasyRichText(
                '\$40.99 \$50.99',
                patternList: [
                  EasyRichTextPattern(
                    targetString: '50.99',
                    style: TextStyle(
                        decoration: TextDecoration.lineThrough,
                        fontFamily: 'Nunito',
                        fontSize: 5.5.h,
                        fontWeight: AppColors.semiBold,
                        color: AppColors.blackColor),
                  ),
                  EasyRichTextPattern(
                    targetString: '40.99',
                    style: TextStyle(
                        fontFamily: 'Nunito',
                        fontSize: 6.5.h,
                        fontWeight: AppColors.bold,
                        color: AppColors.blackColor),
                  ),
                ],
              ),
              SizedBox(
                height: Get.height * 0.01,
              ),
              if (isFullMenu)
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomButton(
                      onTap: () => Get.to(() => const EditMenuScreen()),
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
                    )
                  ],
                )
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
