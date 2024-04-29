import '../../../helpers/utils/export.dart';

class DrawerContent extends StatelessWidget {
  const DrawerContent({
    super.key,
    required this.text,
    required this.imageHeight,
    required this.imagePath,
  });
  final String text;
  final double imageHeight;
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          imagePath,
          height: imageHeight,
        ),
        20.horizontalSpace,
        Text(
          text,
          style: AppDecoration.semiBoldStyle(
              fontFamily: 'Nunito', fontSize: 8.h, color: AppColors.blackColor),
        ),
      ],
    );
  }
}
