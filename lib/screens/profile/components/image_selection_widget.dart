import 'package:street_eats_vendor/helpers/utils/export.dart';

class ImageSelectionWidget extends StatelessWidget {
  const ImageSelectionWidget(
      {super.key, required this.onPressed, required this.child});
  final VoidCallback onPressed;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: Get.width,
        padding: const EdgeInsets.symmetric(vertical: 18),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
                width: 1, color: AppColors.grayColor.withOpacity(.2.r))),
        child: child,
      ),
    );
  }
}
