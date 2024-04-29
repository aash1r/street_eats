import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:street_eats_vendor/helpers/utils/export.dart';
import 'package:street_eats_vendor/screens/announcements_and_promotions/create_promotion_screen.dart';

class PromotionScreen extends StatelessWidget {
  const PromotionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(AppAssets.secondaryBg))),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: GestureDetector(
            onTap: () => Get.back(),
            child: const Icon(
              Icons.keyboard_backspace_rounded,
              color: Colors.white,
            ),
          ),
        ),
        body: Column(
          children: [
            SizedBox(
              height: Get.height * 0.15,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Promotion',
                      style: AppDecoration.mediumStyle(
                          fontFamily: 'Nunito',
                          fontSize: 9.h,
                          color: AppColors.blackColor),
                    ),
                    10.verticalSpace,
                    Container(
                      height: 2.h,
                      width: 84.w,
                      decoration: BoxDecoration(
                          color: AppColors.purpleColor,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    10.verticalSpace,
                    Slidable(
                      key: const ValueKey(0),
                      endActionPane: ActionPane(
                          motion: const ScrollMotion(),
                          dismissible: DismissiblePane(onDismissed: () {}),
                          children: [
                            SlidableAction(
                              borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                              onPressed: (context) {
                                primaryDialogue(context,
                                    title: 'Delete Promotion',
                                    message:
                                        'Are you sure you want\ndelete this promotion?',
                                    actionText1: 'Yes',
                                    actionText2: 'No', onFirstAction: () {
                                  Get.back();
                                }, onSecondAction: () {
                                  Get.back();
                                });
                              },
                              icon: Icons.delete,
                              backgroundColor:
                                  const Color.fromARGB(255, 192, 27, 15),
                              label: 'Delete',
                            ),
                          ]),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: AppColors.grayColor),
                            borderRadius: BorderRadius.circular(10)),
                        child: const ListTile(
                          title: Text('Promotion Name'),
                          subtitle: Text('Product Name'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(),
            CustomButton(
              onTap: () => Get.to(() => const CreatePromotionScreen()),
              height: 21.h,
              title: 'Create Promotion',
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
