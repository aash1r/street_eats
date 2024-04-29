import 'package:street_eats_vendor/helpers/functions/change_page.dart';
import 'package:street_eats_vendor/screens/home/home_screen.dart';

import '../../helpers/utils/export.dart';

class HelpAndSupportScreen extends StatelessWidget {
  const HelpAndSupportScreen({super.key});
  static const routeName = 'help-support-screen';

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(gradient: AppColors.backgroundGradient),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: GestureDetector(
              onTap: () => Get.back(),
              child: const Icon(Icons.keyboard_backspace_rounded)),
          centerTitle: true,
          title: Text(
            'Help & Support',
            style: AppDecoration.semiBoldStyle(
                fontFamily: 'Nunito',
                fontSize: 9.h,
                color: AppColors.blackColor),
          ),
        ),
        body: SingleChildScrollView(
          child: SizedBox(
            height: Get.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Email@Domain.Com',
                  style: AppDecoration.semiBoldStyle(
                      fontFamily: 'Nunito',
                      fontSize: 9.h,
                      color: AppColors.blackColor),
                ),
                3.verticalSpace,
                Text(AppString.dummytext2),
                10.verticalSpace,
                InputField(
                  prefixIcon: const Icon(
                    Icons.person,
                    color: Colors.grey,
                  ),
                  isPassword: false,
                  hint: 'Name',
                ),
                10.verticalSpace,
                InputField(
                  prefixIcon: const Icon(
                    Icons.person,
                    color: Colors.grey,
                  ),
                  isPassword: false,
                  hint: 'Email',
                ),
                10.verticalSpace,
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.r)),
                  child: TextField(
                    textAlign: TextAlign.start,
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: AppColors.grayColor.withOpacity(0.5),
                              width: 1.w),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.r),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: AppColors.grayColor.withOpacity(0.4),
                              width: 1.w),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.r),
                          ),
                        ),
                        contentPadding:
                            EdgeInsets.only(left: 20.w, right: 20.h, top: 60.h),
                        hintText: 'Message',
                        prefixIcon: const Icon(
                          Icons.mail,
                          color: Colors.grey,
                        ),
                        hintMaxLines: 6,
                        hintStyle: const TextStyle(color: Colors.grey),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: AppColors.grayColor.withOpacity(.2.r),
                              width: 1.w),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.r),
                          ),
                        )),
                  ),
                ),
                40.verticalSpace,
                CustomButton(
                  title: 'Submit',
                  onTap: () {
                    secondaryDialogue(context,
                        title: 'Help & Support',
                        message:
                            'Your request has been\nsubmitted successfully',
                        actionText: 'Go Back',
                        onAction: () => changePage(HomeScreen.routeName));
                  },
                  gradient: AppColors.gradient,
                  fontFamily: 'Nunito',
                  fontsize: 8.h,
                  color: AppColors.whiteColor,
                  height: 22.h,
                )
              ],
            ),
          ).paddingAll(20),
        ),
      ),
    );
  }
}
