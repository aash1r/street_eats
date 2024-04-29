import '../../../helpers/utils/export.dart';

class OrdersContainer extends StatelessWidget {
  final String text;
  final String number;

  const OrdersContainer({
    super.key,
    required this.text,
    required this.number,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 100, top: 15, left: 10, bottom: 10),
      decoration: BoxDecoration(
          color: AppColors.whiteColor, borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: AppDecoration.lightStyle(
                fontFamily: 'Nunito',
                fontSize: 6.h,
                color: AppColors.blackColor),
          ),
          Text(
            number,
            style: AppDecoration.semiBoldStyle(
                fontFamily: 'Nunito',
                fontSize: 9.h,
                color: AppColors.blackColor),
          )
        ],
      ),
    );
  }
}
