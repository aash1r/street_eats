import 'package:street_eats_vendor/helpers/utils/export.dart';

class EmployeeProfileScreen extends StatelessWidget {
  const EmployeeProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppAssets.secondaryBg),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(0, 0, 0, 0),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: const Icon(
              Icons.keyboard_backspace_outlined,
              color: AppColors.whiteColor,
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                SizedBox(
                  height: 131,
                  child: Padding(
                    padding: EdgeInsets.only(left: 30.w, top: 12.h),
                    child: Container(
                      height: 131.h,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 4.w,
                          color: AppColors.whiteColor,
                        ),
                      ),
                      child: Image.asset(
                        AppAssets.dummyPorfileImg,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Employees Profile",
                      style: AppDecoration.semiBoldStyle(
                          fontFamily: 'Nunito',
                          fontSize: 12.h,
                          color: AppColors.blackColor),
                    ),
                    2.h.verticalSpace,
                    Text(
                      "My Profile",
                      style: AppDecoration.mediumStyle(
                          fontFamily: 'Nunito',
                          fontSize: 7.5.h,
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
                    const Divider(),
                    10.verticalSpace,
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Name',
                              style: AppDecoration.semiBoldStyle(
                                  fontFamily: 'Nunito',
                                  fontSize: 7.h,
                                  color: AppColors.blackColor),
                            ),
                            Text(
                              'John Smith',
                              style: AppDecoration.lightStyle(
                                  fontFamily: 'Nunito',
                                  fontSize: 7.h,
                                  color: AppColors.blackColor),
                            )
                          ],
                        ),
                        SizedBox(
                          width: Get.width * 0.2,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Email',
                              style: AppDecoration.semiBoldStyle(
                                  fontFamily: 'Nunito',
                                  fontSize: 7.h,
                                  color: AppColors.blackColor),
                            ),
                            Text(
                              'johnsmith@loremipsum.com',
                              style: AppDecoration.lightStyle(
                                  fontFamily: 'Nunito',
                                  fontSize: 7.h,
                                  color: AppColors.blackColor),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: Get.height * 0.05,
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Phone Number',
                              style: AppDecoration.semiBoldStyle(
                                  fontFamily: 'Nunito',
                                  fontSize: 7.h,
                                  color: AppColors.blackColor),
                            ),
                            Text(
                              '+1 234 5678 90',
                              style: AppDecoration.lightStyle(
                                  fontFamily: 'Nunito',
                                  fontSize: 7.h,
                                  color: AppColors.blackColor),
                            )
                          ],
                        ),
                        SizedBox(
                          width: Get.width * 0.1,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Location',
                              style: AppDecoration.semiBoldStyle(
                                  fontFamily: 'Nunito',
                                  fontSize: 7.h,
                                  color: AppColors.blackColor),
                            ),
                            Text(
                              'California, USA',
                              style: AppDecoration.lightStyle(
                                  fontFamily: 'Nunito',
                                  fontSize: 7.h,
                                  color: AppColors.blackColor),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: Get.height * 0.03,
                    ),
                    Text(
                      'Description',
                      style: AppDecoration.semiBoldStyle(
                          fontFamily: 'Nunito',
                          fontSize: 9.h,
                          color: AppColors.blackColor),
                    ),
                    SizedBox(
                      height: Get.height * 0.02,
                    ),
                    Text(
                      AppString.dummytext3,
                      style: AppDecoration.lightStyle(
                          fontFamily: 'Nunito',
                          fontSize: 7.h,
                          color: AppColors.blackColor),
                    )
                  ],
                ).paddingAll(20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
