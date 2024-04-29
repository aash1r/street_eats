import '../../../helpers/utils/export.dart';

// ignore: must_be_immutable
class SettingsContainer extends StatelessWidget {
  SettingsContainer({
    super.key,
    required this.title,
    required this.image,
    required this.customHeight,
  });
  final String title;
  final String image;
  double customHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 22.w, right: 20.w, top: 10, bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: AppColors.whiteColor,
        border: Border.all(
          width: 1.w,
          color: AppColors.grayColor,
        ),
      ),
      child: Row(
        children: [
          SvgPicture.asset(
            image,
            height: customHeight,
          ),
          28.w.horizontalSpace,
          SvgPicture.asset(
            AppAssets.dottedLineIcon,
            height: 10.h,
          ),
          20.w.horizontalSpace,
          Text(
            title,
            style: TextStyle(
              fontSize: 7.h,
              fontFamily: 'Nunito',
              color: AppColors.blackColor.withOpacity(.8.r),
            ),
          ),
        ],
      ),
    );
  }
}
