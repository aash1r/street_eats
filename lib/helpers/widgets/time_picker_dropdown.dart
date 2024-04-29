import 'package:street_eats_vendor/helpers/utils/export.dart';

class TimePickerDropDown extends StatefulWidget {
  const TimePickerDropDown({
    super.key,
  });

  @override
  State<TimePickerDropDown> createState() => _TimePickerDropDownState();
}

class _TimePickerDropDownState extends State<TimePickerDropDown> {
  TimeOfDay timeOfDay = const TimeOfDay(hour: 9, minute: 00);

  void _showTimePicker() {
    showTimePicker(context: context, initialTime: TimeOfDay.now()).then(
      (value) => setState(
        () {
          timeOfDay = value!;
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _showTimePicker,
      child: Container(
        padding:
            const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
        decoration: BoxDecoration(
            color: AppColors.whiteColor,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: AppColors.grayColor)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset(AppAssets.clockIcon),
            15.horizontalSpace,
            SvgPicture.asset(AppAssets.dottedLine),
            15.horizontalSpace,
            Text(
              timeOfDay.format(context).toString(),
              style: AppDecoration.mediumStyle(
                  fontFamily: 'Nunito',
                  fontSize: 7.h,
                  color: AppColors.blackColor.withOpacity(0.6)),
            ),
            15.horizontalSpace,
            const Icon(
              Icons.keyboard_arrow_down_rounded,
              color: AppColors.grayColor,
            ),
          ],
        ),
      ),
    );
  }
}
