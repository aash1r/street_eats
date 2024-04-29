import 'package:street_eats_vendor/helpers/utils/export.dart';

class CircularCountDownWidget extends StatelessWidget {
  const CircularCountDownWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CircularCountDownTimer(
      duration: 8,
      initialDuration: 0,
      controller: CountDownController(),
      width: MediaQuery.of(context).size.width / 3.w,
      height: MediaQuery.of(context).size.height / 4.h,
      ringColor: AppColors.whiteColor,
      ringGradient: null,
      fillColor: AppColors.themeColor,
      fillGradient: AppColors.gradient,
      backgroundColor: AppColors.whiteColor,
      backgroundGradient: null,
      strokeWidth: 9.w,
      strokeCap: StrokeCap.round,
      textStyle: TextStyle(
          fontSize: 6.h,
          color: AppColors.themeColor,
          fontWeight: AppColors.bold),
      textFormat: CountdownTextFormat.MM_SS,
      isReverse: true,
      isReverseAnimation: false,
      isTimerTextShown: true,
      autoStart: true,
      onStart: () {
        debugPrint('Countdown Started');
      },
      onComplete: () {},
      onChange: (String timeStamp) {
        debugPrint('Countdown Changed $timeStamp');
      },
    );
  }
}
