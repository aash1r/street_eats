import 'package:dropdown_button2/dropdown_button2.dart';

import '../utils/export.dart';

class CustomDropDownButton extends StatefulWidget {
  final double? heightt;
  final double? widthh;
  final String hint;
  final List<String> items;
  final Widget? prefixIcon;
  const CustomDropDownButton(
      {super.key,
      this.heightt,
      this.widthh,
      required this.hint,
      required this.items,
      this.prefixIcon});

  @override
  State<CustomDropDownButton> createState() => _CustomDropDownButtonState();
}

class _CustomDropDownButtonState extends State<CustomDropDownButton> {
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField2<String>(
      isExpanded: true,
      decoration: InputDecoration(
        filled: true,
        prefixIcon: widget.prefixIcon,
        fillColor: AppColors.whiteColor,
        hintStyle: TextStyle(
            color: AppColors.blackColor.withOpacity(.9.r),
            fontSize: 7.h,
            fontFamily: 'Nunito',
            fontWeight: AppColors.medium),
        contentPadding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 1.h),
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.grayColor,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.grayColor,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.grayColor,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.grayColor.withOpacity(0.2),
          ),
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
      ),
      hint: Text(
        widget.hint,
        style: TextStyle(
            color: AppColors.blackColor.withOpacity(.9.r),
            fontSize: 7.h,
            fontFamily: 'Nunito',
            fontWeight: AppColors.medium),
      ),
      items: widget.items
          .map(
            (item) => DropdownMenuItem<String>(
              value: item,
              child: Text(
                item,
                style: TextStyle(
                    color: AppColors.blackColor.withOpacity(.9.r),
                    fontSize: 7.h,
                    fontFamily: 'Nunito',
                    fontWeight: AppColors.medium),
              ),
            ),
          )
          .toList(),
      validator: (value) {
        if (value == null) {
          return 'Please select Country/State.';
        }
        return null;
      },
      onChanged: (value) {
        //Do something when selected item is changed.
      },
      onSaved: (value) {},
      buttonStyleData: ButtonStyleData(
        height: widget.heightt,
        width: widget.widthh,
        padding: const EdgeInsets.only(right: 8),
      ),
      iconStyleData: const IconStyleData(
        icon: Icon(
          Icons.keyboard_arrow_down_rounded,
          color: AppColors.grayColor,
        ),
        iconSize: 15,
      ),
      dropdownStyleData: DropdownStyleData(
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(15.r),
        ),
      ),
      menuItemStyleData: MenuItemStyleData(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
      ),
    );
  }
}
