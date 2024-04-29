import 'package:street_eats_vendor/helpers/utils/export.dart';

class AnnouncementOrPromotionSelection extends StatefulWidget {
  const AnnouncementOrPromotionSelection(
      {super.key, required this.onselectionChanged});
  final Function(bool) onselectionChanged;

  @override
  State<AnnouncementOrPromotionSelection> createState() =>
      _AnnouncementOrPromotionSelectionState();
}

class _AnnouncementOrPromotionSelectionState
    extends State<AnnouncementOrPromotionSelection> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  isSelected = true;
                  widget.onselectionChanged(isSelected);
                });
              },
              child: Container(
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                      width: 2,
                      color: isSelected
                          ? AppColors.purpleColor
                          : AppColors.grayColor),
                ),
                child: isSelected
                    ? Container(
                        padding: const EdgeInsets.all(7),
                        decoration: const BoxDecoration(
                            gradient: AppColors.gradient,
                            shape: BoxShape.circle),
                      )
                    : Container(
                        padding: const EdgeInsets.all(7),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                      ),
              ),
            ),
            10.horizontalSpace,
            Text(
              'Announcements',
              style: AppDecoration.mediumStyle(
                  fontFamily: 'Nunito',
                  fontSize: 9.h,
                  color: AppColors.blackColor),
            ),
          ],
        ),
        10.verticalSpace,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  isSelected = false;
                  widget.onselectionChanged(isSelected);
                });
              },
              child: Container(
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                      width: 2,
                      color: !isSelected
                          ? AppColors.purpleColor
                          : AppColors.grayColor),
                ),
                child: !isSelected
                    ? Container(
                        padding: const EdgeInsets.all(7),
                        decoration: const BoxDecoration(
                            gradient: AppColors.gradient,
                            shape: BoxShape.circle),
                      )
                    : Container(
                        padding: const EdgeInsets.all(7),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                      ),
              ),
            ),
            Text(
              'Promotions',
              style: AppDecoration.mediumStyle(
                  fontFamily: 'Nunito',
                  fontSize: 9.h,
                  color: AppColors.blackColor),
            ),
          ],
        ),
      ],
    );
  }
}
