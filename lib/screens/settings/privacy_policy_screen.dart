import '../../helpers/utils/export.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});
  static const routeName = 'privacy-policy-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        leading: GestureDetector(
          onTap: () => Get.back(),
          child: const Icon(
            Icons.keyboard_backspace_rounded,
            color: AppColors.themeColor,
          ),
        ),
        title: Text(
          "Privacy Policy",
          style: AppDecoration.mediumStyle(
              fontFamily: 'Nunito', fontSize: 9.h, color: AppColors.blackColor),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.only(top: .10.sh),
        decoration: const BoxDecoration(gradient: AppColors.backgroundGradient),
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          physics: const ClampingScrollPhysics(),
          children: [
            SizedBox(
              child: Text(
                AppString.dummytext,
                style: AppDecoration.mediumStyle(
                    fontFamily: 'Nunito',
                    fontSize: 9.h,
                    color: AppColors.blackColor.withOpacity(0.5)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
