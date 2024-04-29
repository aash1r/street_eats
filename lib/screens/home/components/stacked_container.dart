import '../../../helpers/utils/export.dart';
import 'orders_container.dart';

class StackedContainer extends StatelessWidget {
  final String text;
  final String number;
  final String svgimage;
  const StackedContainer({
    super.key,
    required this.text,
    required this.number,
    required this.svgimage,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        OrdersContainer(
          text: text,
          number: number,
        ),
        Positioned(
          top: -10.h,
          left: 180.w,
          child: Image.asset(
            AppAssets.orderCount,
            fit: BoxFit.scaleDown,
          ),
        )
      ],
    );
  }
}
