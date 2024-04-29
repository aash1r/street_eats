import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:street_eats_vendor/screens/drawer/components/drawer_model.dart';
import '../../controllers/drawer_controller.dart';
import '../../helpers/utils/export.dart';
import '../auth/login_screen.dart';
import 'components/build_drawer_item.dart';
import 'package:collection/collection.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
  static const routeName = '/drawer';

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    final double scaleFactor = MediaQuery.of(context).textScaleFactor;

    return BackdropFilter(
      filter:
          ImageFilter.blur(sigmaX: 15 * scaleFactor, sigmaY: 15 * scaleFactor),
      child: GetBuilder(
        init: DrawerContentController(),
        builder: (drawerController) {
          final user = drawerController.owner
              ? DrawerModel.activeOwner
              : DrawerModel.inActiveOwner;
          return Container(
            height: screenHeight,
            width: screenWidth * 0.89,
            decoration: const BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(
                      top: screenHeight * 0.02,
                      bottom: screenHeight * 0.04,
                      left: screenWidth * 0.10,
                      right: screenWidth * 0.07,
                    ),
                    width: screenWidth,
                    clipBehavior: Clip.hardEdge,
                    decoration: const BoxDecoration(
                      gradient: AppColors.gradient,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            SizedBox(height: screenHeight * 0.02),
                            Container(
                              padding: const EdgeInsets.all(4),
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromARGB(255, 189, 142, 230),
                              ),
                              child: Image.asset(
                                AppAssets.dummyPorfileImg,
                                height: screenHeight * 0.1,
                                width: screenHeight * 0.25,
                              ),
                            ),
                            SizedBox(height: screenHeight * 0.04),
                            Text(
                              user.name,
                              style: TextStyle(
                                fontSize: 20 * scaleFactor,
                                fontWeight: FontWeight.bold,
                                color: AppColors.whiteColor,
                              ),
                            ),
                            SizedBox(height: screenHeight * 0.008),
                            Text(
                              "info@loremipsum.com",
                              style: TextStyle(
                                fontSize: 16 * scaleFactor,
                                color: AppColors.whiteColor,
                              ),
                            )
                          ],
                        ),
                        GestureDetector(
                          onTap: () => Get.back(),
                          child: SvgPicture.asset(AppAssets.closeIcon)
                              .paddingOnly(top: 20),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.010),
                  Container(
                    padding: const EdgeInsets.only(
                      left: 36,
                      top: 10,
                      right: 20,
                      bottom: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ShaderMask(
                          shaderCallback: (Rect bounds) {
                            return AppColors.gradient.createShader(bounds);
                          },
                          child: Text(
                            drawerController.owner
                                ? 'Active Owner'
                                : 'Inactive Owner',
                            style:
                                TextStyle(color: Colors.white, fontSize: 8.h),
                          ),
                        ),
                        SizedBox(
                          child: Transform.scale(
                            scale: 1.5.r,
                            child: CupertinoSwitch(
                              activeColor: AppColors.purpleColor,
                              value: drawerController.owner,
                              onChanged: (value) {
                                drawerController.toggleOwner();
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.015),
                  Column(
                    children: user.screens.mapIndexed((index, screen) {
                      return Column(
                        children: [
                          buildDrawerItem(screen, drawerController, index),
                          SizedBox(height: screenHeight * 0.015),
                        ],
                      );
                    }).toList(),
                  ),
                  SizedBox(height: screenHeight * 0.04),
                  GestureDetector(
                    onTap: () {
                      primaryDialogue(context,
                          title: 'Logout',
                          message: 'Are you sure you\nwant to logout?',
                          actionText1: 'Cancel',
                          actionText2: 'Logout', onFirstAction: () {
                        Get.back();
                      }, onSecondAction: () {
                        Get.to(() => LoginScreen());
                      });
                    },
                    child: Container(
                      width: screenWidth * 0.52,
                      padding: EdgeInsets.only(
                        left: screenWidth * 0.13,
                        top: screenHeight * 0.012,
                        bottom: screenHeight * 0.012,
                      ),
                      decoration: const BoxDecoration(
                        color: AppColors.themeColor,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(30),
                          bottomRight: Radius.circular(30),
                        ),
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            AppAssets.homeIconGradient,
                            height: screenHeight * 0.034,
                            width: screenWidth * 0.041,
                          ),
                          SizedBox(width: screenWidth * 0.01),
                          Text(
                            "Logout",
                            style: TextStyle(
                              fontSize: 18 * scaleFactor,
                              fontWeight: FontWeight.bold,
                              color: AppColors.grayColor,
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
