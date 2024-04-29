import 'package:timeline_tile/timeline_tile.dart';
import '../../../../helpers/utils/export.dart';

class CustomTimeLineTile extends StatelessWidget {
  const CustomTimeLineTile(
      {super.key,
      required this.isFirst,
      required this.isLast,
      required this.isPast,
      required this.orderProgress,
      required this.status});
  final bool isFirst;
  final bool isLast;
  final bool isPast;
  final Widget orderProgress;
  final String status;

  @override
  Widget build(BuildContext context) {
    return TimelineTile(
      alignment: TimelineAlign.start,
      isFirst: isFirst,
      isLast: isLast,
      beforeLineStyle: LineStyle(
          thickness: BorderSide.strokeAlignCenter,
          color: isPast ? AppColors.purpleColor : AppColors.grayColor),
      indicatorStyle: IndicatorStyle(
        indicator: Container(
          height: 15,
          width: 10,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                  color: isPast ? AppColors.purpleColor : AppColors.grayColor,
                  width: 1)),
          child: Center(
            child: Container(
              width: 15,
              height: 13,
              decoration: BoxDecoration(
                  color: isPast ? AppColors.purpleColor : Colors.transparent,
                  shape: BoxShape.circle),
            ),
          ),
        ),
      ),
      endChild: orderProgress,
    );
  }
}
