import 'package:street_eats_vendor/screens/employees/create_employee_profile_screen.dart';
import 'package:street_eats_vendor/screens/employees/employee_profile_screen.dart';

import '../../helpers/utils/export.dart';

class MyEmployeesScreen extends StatefulWidget {
  const MyEmployeesScreen({super.key});

  @override
  State<MyEmployeesScreen> createState() => _MyEmployeesScreenState();
}

class _MyEmployeesScreenState extends State<MyEmployeesScreen> {
  List<String> images = [
    AppAssets.dummyPorfileImg,
    AppAssets.dummyPorfileImg,
    AppAssets.dummyPorfileImg,
    AppAssets.dummyPorfileImg,
    AppAssets.dummyPorfileImg,
    AppAssets.dummyPorfileImg,
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(gradient: AppColors.backgroundGradient),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          surfaceTintColor: Colors.transparent,
          iconTheme: const IconThemeData(color: AppColors.themeColor),
          actions: [
            GestureDetector(
              onTap: () => Get.to(() => const CreateEmployeeProfileScreen()),
              child: Container(
                padding: const EdgeInsets.all(5),
                decoration: const BoxDecoration(
                    color: AppColors.themeColor, shape: BoxShape.circle),
                child: Icon(
                  Icons.add,
                  size: 12.h,
                  color: Colors.white,
                ),
              ).paddingOnly(right: 45.w),
            )
          ],
        ),
        body: GridView.builder(
          physics: const ClampingScrollPhysics(),
          shrinkWrap: true,
          itemCount: 6,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 20.h,
            crossAxisSpacing: 5.w,
            crossAxisCount: 2,
          ),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Get.to(() => const EmployeeProfileScreen());
              },
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Center(
                    child: Container(
                      padding:
                          EdgeInsets.only(top: 35.h, left: 15.w, right: 15.w),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: AppColors.grayColor.withOpacity(.30),
                      ),
                      child: Column(
                        children: [
                          Text(
                            "John Smith",
                            style: AppDecoration.semiBoldStyle(
                                fontFamily: 'Nunito',
                                fontSize: 7.h,
                                color: AppColors.blackColor),
                          ),
                          Text(
                            "john@loremipsum.info",
                            style: TextStyle(
                                fontSize: 6.h, fontWeight: AppColors.medium),
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 60.h,
                    left: 100.w,
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 7.r),
                              blurRadius: 4.r,
                              color: AppColors.grayColor)
                        ],
                      ),
                      child: Image(image: AssetImage(images[index])),
                    ),
                  )
                ],
              ),
            );
          },
        ).paddingAll(20),
      ),
    );
  }
}
