import '../../helpers/utils/export.dart';

class TermsConditionScreen extends StatelessWidget {
  const TermsConditionScreen({super.key});
  static const routeName = 'terms-condition-screen';

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
          "Terms & Conditions",
          style: AppDecoration.semiBoldStyle(
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
              style: AppDecoration.semiBoldStyle(
                  fontFamily: 'Nunito',
                  fontSize: 9.h,
                  color: AppColors.blackColor.withOpacity(0.5)),
            )),
          ],
        ),
      ),
    );
  }
}
