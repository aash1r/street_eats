import 'package:multi_select_flutter/multi_select_flutter.dart';
import '../utils/export.dart';

Widget multiSelectDialogField(BuildContext context,
    {required void Function(List<String>) onConfirm,
    required String? text,
    required List<MultiSelectItem<String>> items}) {
  return MultiSelectDialogField(
    cancelText: Text(
      'Cancel',
      style: TextStyle(
          color: AppColors.blackColor.withOpacity(0.5),
          fontSize: 7.h,
          fontFamily: 'Nunito',
          fontWeight: AppColors.medium),
    ),
    searchable: true,
    backgroundColor: AppColors.whiteColor,
    itemsTextStyle: TextStyle(
        color: AppColors.blackColor.withOpacity(.9.r),
        fontSize: 7.h,
        fontFamily: 'Nunito',
        fontWeight: AppColors.medium),
    buttonText: Text(
      text ?? "",
      style: TextStyle(
          color: AppColors.blackColor.withOpacity(.9.r),
          fontSize: 7.h,
          fontFamily: 'Nunito',
          fontWeight: AppColors.medium),
    ),
    buttonIcon: const Icon(
      Icons.keyboard_arrow_down,
      color: AppColors.grayColor,
    ),
    decoration: BoxDecoration(
        border: Border.all(color: AppColors.grayColor),
        color: Colors.white,
        borderRadius: BorderRadius.circular(10)),
    items: items,
    onConfirm: onConfirm,
    listType: MultiSelectListType.CHIP,
    checkColor: AppColors.purpleColor,
  );
}
